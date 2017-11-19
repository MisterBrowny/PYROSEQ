#ifndef ECRAN_H
#define	ECRAN_H

#define DIGIT_1		PORTCbits.RC1
#define DIGIT_2		PORTCbits.RC2
#define DIGIT_3		PORTCbits.RC3
#define DIGIT_4		PORTCbits.RC0

//#define SEG_A		PORTDbits.RD2
//#define SEG_B		PORTDbits.RD0
//#define SEG_C		PORTDbits.RD5
//#define SEG_D		PORTDbits.RD6
//#define SEG_E		PORTDbits.RD7
//#define SEG_F		PORTDbits.RD1
//#define SEG_G		PORTDbits.RD4
//#define SEG_DOT	PORTDbits.RD3

#define SEG_A		0x04
#define SEG_B		0x01
#define SEG_C		0x20
#define SEG_D		0x40
#define SEG_E		0x80
#define SEG_F		0x02
#define SEG_G		0x10
#define SEG_DOT		0x08

const char Blank[]		= "    ";
const char ErreurTir[]	= "E_t ";
const char Armed[]		= "-   ";
char PrintTest[]		= "3456";

typedef struct	StructEcran{
	char Digit[4];
	char *Digits;
	
	byte Dot[4];
	byte Index;
	byte Cpt;
	byte tRate;
	word Time;
	byte Solid;
}struEcran;

struEcran	Ecran;

void ecran_print_one_char (byte Digit, char Character);
void ecran_print_num (byte Num);
void ecran_wait (void);
void ecran_blank (void);
void ecran_refresh (void);

#endif	/* ECRAN_H */

