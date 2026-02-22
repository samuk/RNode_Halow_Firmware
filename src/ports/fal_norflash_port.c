#include "basic_include.h"
#include <lib/fal/fal.h>
#include <lib/fal/fal_def.h>

#include "hal/spi_nor.h"
#include <stdint.h>
#include <stddef.h>

extern struct spi_nor_flash flash0;
#define FLASH_START_ADDR   0U
#define FLASH_END_ADDR     flash0.size

#define ALIGN_UP(x,a)     (((x)+(a)-1U)/(a)*(a))
#define ALIGN_DOWN(x,a)   ((x)/(a)*(a))

static int init(void);
static int read(long offset, uint8_t *buf, size_t size);
static int write(long offset, const uint8_t *buf, size_t size);
static int erase(long offset, size_t size);

static inline uint32_t sector_size(void){
    return flash0.sector_size ? flash0.sector_size : (4U * 1024U);
}

static inline uint32_t page_size(void){
    return flash0.page_size ? flash0.page_size : 256U;
}

extern struct spi_nor_flash flash0;

static uint32_t spi_nor_size_from_jedec(uint32_t jedec_id){
    uint8_t cap = jedec_id & 0xFF;

    if (cap < 0x10 || cap > 0x1F) {
        return 0;
    }

    return (1UL << cap);
}

static int init(void){
    uint8_t jedec[3];
    uint32_t jedec_id;
    uint32_t size;

    if (spi_nor_open(&flash0) != 0) {
        return -1;
    }

    spi_nor_standard_read_jedec_id(&flash0, jedec);

    jedec_id = (jedec[0] << 16) | (jedec[1] << 8) | jedec[2];

    size = spi_nor_size_from_jedec(jedec_id);
    if (size == 0) {
        spi_nor_close(&flash0);
        return -1;
    }

    flash0.size        = size;
    flash0.sector_size = 0x1000;   // 4K
    flash0.page_size   = 256;
    flash0.block_size  = 0x10000;  // 64K

    nor_flash0.len      = flash0.size;
    nor_flash0.blk_size = flash0.sector_size;

    spi_nor_close(&flash0);
    return 0;
}

static int read(long offset, uint8_t *buf, size_t size){
    uint32_t addr = (uint32_t)offset + FLASH_START_ADDR;
    if (!buf || !size) {
        return 0;
    }
    if (addr + size > FLASH_END_ADDR) {
        return -1;
    }

    spi_nor_open(&flash0);
    spi_nor_read(&flash0, addr, buf, (uint32_t)size);
    spi_nor_close(&flash0);

    return (int)size;
}

static int need_erase(const uint8_t *p, uint32_t len){
    for (uint32_t i = 0; i < len; i++) {
        if (p[i] != 0xFF) {
            return 1;
        }
    }
    return 0;
}

static void program_pages(uint32_t addr, const uint8_t *buf, uint32_t size){
    uint32_t page = page_size();

    while (size) {
        uint32_t off   = addr % page;
        uint32_t chunk = page - off;
        if (chunk > size) {
            chunk = size;
        }

        spi_nor_write(&flash0, addr, (uint8_t *)buf, chunk);

        addr += chunk;
        buf  += chunk;
        size -= chunk;
    }
}

static int write_one_sector(uint32_t sector_addr, uint32_t addr,
                            const uint8_t *buf, uint32_t size){
    uint32_t sect = sector_size();
    uint32_t off  = addr - sector_addr;

    static uint8_t sect_buf[4U * 1024U];

    if (sect != sizeof(sect_buf)) {
        return -2;
    }
    if (off + size > sect) {
        return -1;
    }

    spi_nor_read(&flash0, sector_addr, sect_buf, sect);

    if (!need_erase(&sect_buf[off], size)) {
        program_pages(addr, buf, size);
        return (int)size;
    }

    for (uint32_t i = 0; i < size; i++) {
        sect_buf[off + i] = buf[i];
    }

    spi_nor_sector_erase(&flash0, sector_addr);
    program_pages(sector_addr, sect_buf, sect);

    return (int)size;
}

static int write(long offset, const uint8_t *buf, size_t size){
    uint32_t addr = (uint32_t)offset + FLASH_START_ADDR;
    uint32_t end  = addr + (uint32_t)size;
    uint32_t sect = sector_size();

    if (!buf || !size) {
        return 0;
    }
    if (end > FLASH_END_ADDR || addr < FLASH_START_ADDR) {
        return -1;
    }

    spi_nor_open(&flash0);

    uint32_t cur = addr;
    while (cur < end) {
        uint32_t sector_addr = ALIGN_DOWN(cur, sect);
        uint32_t next        = sector_addr + sect;
        uint32_t chunk       = (end < next) ? (end - cur) : (next - cur);

        int rc = write_one_sector(sector_addr, cur, buf, chunk);
        if (rc < 0) {
            spi_nor_close(&flash0);
            return rc;
        }

        cur += chunk;
        buf += chunk;
    }

    spi_nor_close(&flash0);
    return (int)size;
}

static int erase(long offset, size_t size){
    uint32_t addr = (uint32_t)offset + FLASH_START_ADDR;
    uint32_t end  = addr + (uint32_t)size;
    uint32_t sect = sector_size();

    if (!size) {
        return 0;
    }
    if (end > FLASH_END_ADDR || addr < FLASH_START_ADDR) {
        return -1;
    }

    uint32_t cur = ALIGN_DOWN(addr, sect);
    uint32_t end_up = ALIGN_UP(end, sect);

    spi_nor_open(&flash0);

    while (cur < end_up) {
        spi_nor_sector_erase(&flash0, cur);
        cur += sect;
    }

    spi_nor_close(&flash0);
    return (int)size;
}

struct fal_flash_dev nor_flash0 = {
    .name       = "nor_flash0",
    .addr       = FLASH_START_ADDR,
    .len        = 0,
    .blk_size   = 0,
    .ops        = { init, read, write, erase },
    .write_gran = 1,
};
