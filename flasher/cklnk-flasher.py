#!/usr/bin/env python3
from __future__ import annotations

import argparse
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path


def resolve_exe(p: Path) -> Path:
    """
    Разрешаем путь к exe:
      - если передан абсолютный/относительный путь и он существует -> ок
      - иначе ищем по PATH через shutil.which()
    """
    if p.exists():
        return p.resolve()

    found = shutil.which(str(p))
    if found:
        return Path(found).resolve()

    raise FileNotFoundError(f"gdb not found (neither file nor in PATH): {p}")


def run_gdb(
    gdb: Path,
    elf: Path,
    host: str,
    port: int,
    *,
    pc: int | None,
    do_reset: bool,
    do_download: bool,
    do_continue: bool,
    extra: list[str],
) -> int:
    gdb = resolve_exe(gdb)

    if not elf.exists():
        raise FileNotFoundError(f"elf not found: {elf}")

    lines: list[str] = []
    lines += [
        "set pagination off",
        "set confirm off",
        "set complaints 0",
        f'file "{elf.resolve().as_posix()}"',
        f"target remote {host}:{port}",
        "monitor set detech-resume-target on",
    ]

    if do_reset:
        lines += ["interpreter-exec mi -target-reset"]

    if do_download:
        lines += ["interpreter-exec mi -target-download"]

    if pc is not None:
        lines += [f"set $pc = 0x{pc:08x}"]

    for cmd in extra:
        lines.append(cmd)

    if do_continue:
        lines += ["continue"]

    lines += ["detach", "quit"]

    script = "\n".join(lines) + "\n"

    with tempfile.NamedTemporaryFile("w", delete=False, suffix=".gdb", encoding="utf-8") as f:
        f.write(script)
        script_path = Path(f.name)

    try:
        proc = subprocess.run(
            [str(gdb), "-q", "-nx", "-batch", "-x", str(script_path)],
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
        )
        print(proc.stdout, end="")
        return proc.returncode
    finally:
        script_path.unlink(missing_ok=True)


def main() -> int:
    ap = argparse.ArgumentParser(
        description="Flash ELF into target via csky-elfabiv2-gdb + XuanTie DebugServer (remote)."
    )
    ap.add_argument("elf", type=Path, help="Path to ELF")
    ap.add_argument(
        "--gdb",
        type=Path,
        default=Path("csky-elfabiv2-gdb.exe"),
        help="Path/name of csky-elfabiv2-gdb(.exe). If only name, searched in PATH.",
    )
    ap.add_argument("--host", default="localhost")
    ap.add_argument("--port", type=int, default=1025)
    ap.add_argument("--pc", type=lambda s: int(s, 0), default=None,
                    help="Set PC after download, e.g. 0x20001000")
    ap.add_argument("--reset", action="store_true")
    ap.add_argument("--no-download", action="store_true")
    ap.add_argument("--continue", dest="do_continue", action="store_true")
    ap.add_argument("--cmd", action="append", default=[])

    args = ap.parse_args()

    try:
        return run_gdb(
            args.gdb,
            args.elf,
            args.host,
            args.port,
            pc=args.pc,
            do_reset=args.reset,
            do_download=not args.no_download,
            do_continue=args.do_continue,
            extra=args.cmd,
        )
    except Exception as e:
        print(f"[ERR] {e}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
