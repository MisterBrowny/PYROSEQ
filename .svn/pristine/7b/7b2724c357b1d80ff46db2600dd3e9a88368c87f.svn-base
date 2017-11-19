#ifndef UTILS_H
#define	UTILS_H

/* Macros to access bytes within words and words within longs */
#define MSB_BYTE(c)		((byte) ((byte) ((c) & 0xF0) >> 4))
#define LSB_BYTE(c)		((byte) ((c) & 0x0F))
#define LOW_BYTE(w)     ((byte) ((w) & 0xFF))
#define HIGH_BYTE(w)    ((byte) (((w) >> 8) & 0xFF))
#define LOW_WORD(l)     ((word) ((l) & 0xFFFF))
#define HIGH_WORD(l)    ((word) (((l) >> 16) & 0xFFFF))

#define CHANGE_LOW_QUART(c1, c2)	((byte) ((byte) (c1 & 0xF0) | (byte) (c2 & 0x0F)))
#define CHANGE_HIGH_QUART(c1, c2)	((byte) ((byte) (c1 & 0x0F) | (byte) (c2 & 0xF0)))

char * DecToStr (byte value, char * result);
char HexToAscii(byte Value);

#endif	/* UTILS_H */

