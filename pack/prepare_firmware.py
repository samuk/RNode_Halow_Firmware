#!/usr/bin/env python3
from __future__ import annotations

import argparse
import configparser
import struct
from pathlib import Path


INI_NAME = "makecode.ini"  # <- фиксированное имя ini рядом со скриптом


def _u8(x: int) -> int:
    return x & 0xFF


def _u16(x: int) -> int:
    return x & 0xFFFF


def _u32(x: int) -> int:
    return x & 0xFFFFFFFF


def parse_int(s: str) -> int:
    """
    В этих ini почти всё в HEX без 0x (5A69, 20001000, 1A, 3B...).
    Поддерживаем также 0x....
    """
    s = (s or "").strip()
    if not s:
        return 0
    sl = s.lower()
    if sl.startswith("0x"):
        return int(sl, 16)
    return int(sl, 16)


def hgic_crc32(data: bytes) -> int:
    """
    CRC-32 как в твоём C-коде:
      init 0xFFFFFFFF, reflected, poly 0xEDB88320, final ~crc
    """
    crc = 0xFFFFFFFF
    for b in data:
        crc ^= b
        for _ in range(8):
            if crc & 1:
                crc = (crc >> 1) ^ 0xEDB88320
            else:
                crc >>= 1
            crc &= 0xFFFFFFFF
    return (~crc) & 0xFFFFFFFF


def hgic_crc16_modbus(data: bytes) -> int:
    """
    CRC-16/MODBUS как в C:
      poly=0xA001 (reverse 0x8005), init=0xFFFF, refin/refout=true, xorout=0x0000
    """
    crc = 0xFFFF
    for b in data:
        crc ^= b
        for _ in range(8):
            if crc & 1:
                crc = (crc >> 1) ^ 0xA001
            else:
                crc >>= 1
            crc &= 0xFFFF
    return crc & 0xFFFF


def load_ini(ini_path: Path) -> tuple[dict, dict]:
    cfg = configparser.ConfigParser(
        interpolation=None,
        delimiters=("=",),
        comment_prefixes=("#", ";"),
        inline_comment_prefixes=("#", ";"),
        strict=False,
    )
    cfg.optionxform = str

    # ini часто не utf-8 (cp1251/ansi)
    last_err: Exception | None = None
    for enc in ("utf-8", "cp1251", "latin-1"):
        try:
            cfg.read(ini_path, encoding=enc)
            last_err = None
            break
        except UnicodeDecodeError as e:
            last_err = e
            continue
    if last_err is not None:
        raise SystemExit(f"Cannot decode INI file: {ini_path}")

    if "COMMON" not in cfg or "SPI" not in cfg:
        raise SystemExit("INI must contain [COMMON] and [SPI].")

    return dict(cfg["COMMON"]), dict(cfg["SPI"])


def build_boot_header(spi: dict, fw: bytes) -> bytes:
    boot_flag = parse_int(spi.get("Flag", "5A69"))
    version = parse_int(spi.get("Version", "0"))
    size = 0x1C  # тогда size+4 = 0x20 (весь хедер)

    boot_to_sram_addr = parse_int(spi.get("CodeLoadToSramAddr", "20001000"))
    run_sram_addr = parse_int(spi.get("CodeExeAddr", "20001000"))
    boot_code_offset_addr = parse_int(spi.get("CodeAddrOffset", "2000"))
    boot_from_flash_len = len(fw)

    driver_strength = parse_int(spi.get("DriverStrength", "0")) & 0x3
    spi_clk_mhz = parse_int(spi.get("SPI_CLK_MHZ", "0")) & 0x3FFF
    boot_baud_mhz_driver_strength = (spi_clk_mhz | (driver_strength << 14)) & 0xFFFF

    pll_src_mhz = parse_int(spi.get("PLL_SRC_MHZ", "0")) & 0xFF
    pll_en = 1 if parse_int(spi.get("PLL_EN", "0")) else 0
    debug = 1 if parse_int(spi.get("DebugInfoEn", "0")) else 0  # <-- фикс
    aes_en = 1 if parse_int(spi.get("AesEnable", "0")) else 0
    crc_en = 1 if parse_int(spi.get("CodeCRC16", "0")) else 0

    mode = (
        (pll_src_mhz & 0xFF)
        | ((pll_en & 1) << 8)
        | ((debug & 1) << 9)
        | ((aes_en & 1) << 10)
        | ((crc_en & 1) << 11)
    ) & 0xFFFF

    boot_data_crc = hgic_crc16_modbus(fw) if crc_en else 0

    flash_blk_size = 0
    reserved = 0
    head_crc16 = 0  # сначала 0

    # pack with head_crc16=0
    boot_hdr0 = struct.pack(
        "<HBBIIIIHHHHHH",
        _u16(boot_flag),
        _u8(version),
        _u8(size),
        _u32(boot_to_sram_addr),
        _u32(run_sram_addr),
        _u32(boot_code_offset_addr),
        _u32(boot_from_flash_len),
        _u16(boot_data_crc),
        _u16(flash_blk_size),
        _u16(boot_baud_mhz_driver_strength),
        _u16(mode),
        _u16(reserved),
        _u16(0),
    )
    if len(boot_hdr0) != 0x20:
        raise RuntimeError("BOOT header size mismatch")

    # head_crc16 по (size+4) байтам
    crc_len = size + 4
    head_crc16 = hgic_crc16_modbus(boot_hdr0[:crc_len])

    # final header
    return boot_hdr0[:-2] + struct.pack("<H", _u16(head_crc16))



def build_spi_info_header(spi: dict) -> bytes:
    func_code = 0x01

    read_cmd = parse_int(spi.get("ReadCmd", "03")) & 0xFF
    cmd_dummy = parse_int(spi.get("ReadCmdDummy", "0")) & 0xF
    clock_mode = parse_int(spi.get("ClockMode", "0")) & 0x3
    spec_seq_en = 1 if parse_int(spi.get("SpecSquenceEn", "0")) else 0
    quad_wire_en = 1 if parse_int(spi.get("WireMode4En", "0")) else 0

    cfg1 = (cmd_dummy & 0xF) | ((clock_mode & 0x3) << 4) | ((spec_seq_en & 1) << 6) | ((quad_wire_en & 1) << 7)

    def _wire_mode_bits(v: int) -> int:
        if v == 1:
            return 0
        if v == 2:
            return 1
        if v == 4:
            return 2
        return 0

    wire_cmd = _wire_mode_bits(parse_int(spi.get("WireModeWhenCmd", "1")))
    wire_addr = _wire_mode_bits(parse_int(spi.get("WireModeWhenAddr", "1")))
    wire_data = _wire_mode_bits(parse_int(spi.get("WireModeWhenData", "1")))
    quad_sel = parse_int(spi.get("WireMode4Select", "0")) & 0x3

    cfg2 = (wire_cmd & 0x3) | ((wire_addr & 0x3) << 2) | ((wire_data & 0x3) << 4) | ((quad_sel & 0x3) << 6)

    reserved3 = 0
    sample_delay = parse_int(spi.get("SampleDelay", "0")) & 0xFFFF

    read_cfg = struct.pack("<BBBBH", read_cmd, cfg1, cfg2, reserved3, sample_delay)

    spec = bytearray(64)
    if spec_seq_en:
        n = parse_int(spi.get("SpecSquenceNumbers", "0"))
        out = bytearray()
        for i in range(max(0, n)):
            key = f"SpecSquence{i}"
            hexs = spi.get(key, "").strip()
            if hexs:
                out += bytes.fromhex(hexs)
        spec[: min(64, len(out))] = out[:64]

    # size = полный размер SPI_INFO, включая CRC16
    size = 1 + 1 + len(read_cfg) + len(spec)

    hdr_wo_crc = struct.pack("<BB", func_code, _u8(size)) + read_cfg + bytes(spec)
    header_crc16 = hgic_crc16_modbus(hdr_wo_crc)

    return hdr_wo_crc + struct.pack("<H", _u16(header_crc16))


def build_fw_info_header(common: dict, code_crc32: int) -> bytes:
    func_code = 0x02
    size = 1 + 1 + 4 + 4 + 4 + 2 + 1 + 4 + 2  # = 24

    sdk_version = 1
    svn_version = 0x44F4
    date = 0
    chip_id = parse_int(common.get("CHIP_ID", "0")) & 0xFFFF
    cpu_id = parse_int(common.get("CPU_ID", "0")) & 0xFF

    param_crc16 = 0
    crc16 = 0

    return struct.pack(
        "<BBIIIHBIHH",
        _u8(func_code),
        _u8(size),
        _u32(sdk_version),
        _u32(svn_version),
        _u32(date),
        _u16(chip_id),
        _u8(cpu_id),
        _u32(code_crc32),
        _u16(param_crc16),
        _u16(crc16),
    )


def main() -> int:
    ap = argparse.ArgumentParser(description="Pack HGIC/TXW firmware: headers @0x0000, code @CodeAddrOffset.")
    ap.add_argument("input_bin", type=Path, help="Input firmware .bin (the code)")
    ap.add_argument("-o", "--output", type=Path, default=None, help="Output packed bin (default: <input>.packed.bin)")
    ap.add_argument("--pad-byte", default="FF", help="Padding byte to reach code offset (default: FF)")
    args = ap.parse_args()

    script_dir = Path(__file__).resolve().parent
    ini_path = script_dir / INI_NAME
    if not ini_path.is_file():
        raise SystemExit(f"INI not found рядом со скриптом: {ini_path}")

    common, spi = load_ini(ini_path)

    fw_path = args.input_bin
    if not fw_path.is_file():
        raise SystemExit(f"Input bin not found: {fw_path}")

    out_path = args.output or fw_path.with_suffix(fw_path.suffix + ".packed.bin")

    pad_byte_str = args.pad_byte.strip().lower()
    if pad_byte_str.startswith("0x"):
        pad_byte_str = pad_byte_str[2:]
    pad_byte = int(pad_byte_str, 16) & 0xFF

    fw = fw_path.read_bytes()

    code_crc32 = hgic_crc32(fw)

    headers = (
        build_boot_header(spi, fw)
        + build_spi_info_header(spi)
        + build_fw_info_header(common, code_crc32)
    )

    code_off = parse_int(spi.get("CodeAddrOffset", "2000"))
    if code_off <= 0:
        raise SystemExit("SPI.CodeAddrOffset must be > 0")

    if len(headers) > code_off:
        raise SystemExit(f"Headers too large ({len(headers)}) to fit before 0x{code_off:X}")

    out = bytearray()
    out += headers
    out += bytes([pad_byte]) * (code_off - len(out))
    out += fw

    out_path.write_bytes(out)

    print(f"INI    : {ini_path}")
    print(f"Input  : {fw_path} ({len(fw)} bytes)")
    print(f"CRC32  : 0x{code_crc32:08X}")
    print(f"Offset : 0x{code_off:08X}")
    print(f"Output : {out_path} ({len(out)} bytes)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
