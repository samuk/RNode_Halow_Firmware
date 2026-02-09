#ifndef _INTTYPES_H_
#define _INTTYPES_H_

#include <stdint.h>

#define PRId8           "d"
#define PRIi8           "i"
#define PRIu8           "u"
#define PRIx8           "x"
#define PRIX8           "X"

#define PRId16          "d"
#define PRIi16          "i"
#define PRIu16          "u"
#define PRIx16          "x"
#define PRIX16          "X"

#define PRId32          "d"
#define PRIi32          "i"
#define PRIu32          "u"
#define PRIx32          "x"
#define PRIX32          "X"

#define PRId64          "lld"
#define PRIi64          "lli"
#define PRIu64          "llu"
#define PRIx64          "llx"
#define PRIX64          "llX"

#define PRIdLEAST16     "d"
#define PRIuLEAST16     "u"
#define PRIxLEAST16     "x"
#define PRIXLEAST16     "X"

#define PRIdLEAST32     PRId32
#define PRIuLEAST32     PRIu32
#define PRIxLEAST32     PRIx32
#define PRIXLEAST32     PRIX32

#define PRIdMAX   "lld"
#define PRIiMAX   "lli"
#define PRIuMAX   "llu"
#define PRIxMAX   "llx"
#define PRIXMAX   "llX"

#endif
