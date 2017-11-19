#include "includes.h"

static void ecran_raz_digit (void)
{
	PORTD = 0;
	PORTC &= 0xF0;
}

static void ecran_digit (char Char)
{
	switch (Char)
	{
		case ' ':	PORTD =	0x00;	break;	//																break;
		case 'A':	PORTD =	0xB7;	break;	//SEG_A = SEG_B = SEG_C = SEG_E = SEG_F = SEG_G = 1;			break;
		case 'B':	PORTD =	0xF2;	break;	//SEG_C = SEG_D = SEG_E = SEG_F = SEG_G = 1;					break;	// => 'b'
		case 'C':	PORTD =	0xD0;	break;	//SEG_D = SEG_E = SEG_G = 1;									break;	// => 'c'
		case 'D':	PORTD =	0xF1;	break;	//SEG_B = SEG_C = SEG_D = SEG_E = SEG_G = 1;					break;	// => 'd'
		case 'E':	PORTD =	0xD6;	break;	//SEG_A = SEG_D = SEG_E = SEG_F = SEG_G = 1;					break;
		case 'F':	PORTD =	0x96;	break;	//SEG_A = SEG_E = SEG_F = SEG_G = 1;							break;
		case 'P':	PORTD =	0x97;	break;	//SEG_A = SEG_B = SEG_E = SEG_F = SEG_G = 1;					break;
		case 'b':	PORTD =	0xF2;	break;	//SEG_C = SEG_D = SEG_E = SEG_F = SEG_G = 1;					break;	// => 'b'
		case 'c':	PORTD = 0xD0;	break;	//SEG_D = SEG_E = SEG_G = 1;									break;	// => 'c'
		case 'd':	PORTD =	0xF1;	break;	//SEG_B = SEG_C = SEG_D = SEG_E = SEG_G = 1;					break;	// => 'd'
		case 'S':	PORTD =	0x76;	break;	//SEG_A = SEG_C = SEG_D = SEG_F = SEG_G = 1;					break;
		case 't':	PORTD =	0xD2;	break;	//SEG_D = SEG_E = SEG_F = SEG_G = 1;							break;
		case '_':	PORTD =	0x40;	break;	//SEG_D =  1;													break;
		case '-':	PORTD =	0x10;	break;	//SEG_G =  1;													break;
		case '0':	PORTD = 0xE7;	break;	//SEG_A = SEG_B = SEG_C = SEG_D = SEG_E = SEG_F = 1;			break;
		case '1':	PORTD = 0x21;	break;	//SEG_B = SEG_C = 1;											break;
		case '2':	PORTD =	0xD5;	break;	//SEG_A = SEG_B = SEG_D = SEG_E = SEG_G = 1;					break;
		case '3':	PORTD =	0x75;	break;	//SEG_A = SEG_B = SEG_C = SEG_D = SEG_G = 1;					break;
		case '4':	PORTD =	0x33;	break;	//SEG_B = SEG_C = SEG_F = SEG_G = 1;							break;
		case '5':	PORTD =	0x76;	break;	//SEG_A = SEG_C = SEG_D = SEG_F = SEG_G = 1;					break;
		case '6':	PORTD =	0xF6;	break;	//SEG_A = SEG_C = SEG_D = SEG_E = SEG_F = SEG_G = 1;			break;
		case '7':	PORTD =	0x25;	break;	//SEG_A = SEG_B = SEG_C = 1;									break;
		case '8':	PORTD =	0xF7;	break;	//SEG_A = SEG_B = SEG_C = SEG_D = SEG_E = SEG_F = SEG_G = 1;	break;
		case '9':	PORTD =	0x77;	break;	//SEG_A = SEG_B = SEG_C = SEG_D = SEG_F = SEG_G = 1;			break;
		default:					break;
	}
}

static void ecran_dot (byte Dot)
{
	if (Dot == 1)
	{
		PORTD |= SEG_DOT;
	}
}

void ecran_print_one_char (byte Digit, char Character)
{
	ecran_raz_digit();

	ecran_digit(Character);

	switch (Digit)
	{
		case 0:	DIGIT_1 = 1;	break;
		case 1:	DIGIT_2 = 1;	break;
		case 2:	DIGIT_3 = 1;	break;
		case 3:	DIGIT_4 = 1;	break;
		default:				break;
	}
}

void ecran_print_num (byte Num)
{
	char * tempStr;

	tempStr = PrintTest;

	tempStr = DecToStr(Num, tempStr);

	Ecran.Digit[0] = ' ';
	Ecran.Digit[1] = ' ';

	if (Num < 10)
	{
		Ecran.Digit[3] = tempStr[0];
		Ecran.Digit[2] = '0';
	}
	else
	{
		Ecran.Digit[3] = tempStr[1];
		Ecran.Digit[2] = tempStr[0];
	}

	Ecran.Digits = Ecran.Digit;
}

void ecran_wait (void)
{
	// Affiche un point sur le digit 2
	ecran_raz_digit();

	ecran_dot(1);

	DIGIT_2 = 1;

	Ecran.Solid = true;
}

void ecran_blank (void)
{
	// Clear l'afficheur
	Ecran.Digits = (char *) Blank;

	Ecran.Dot[0] = 0;
	Ecran.Dot[1] = 0;
	Ecran.Dot[2] = 0;
	Ecran.Dot[3] = 0;

	Ecran.Solid = false;
}

void ecran_refresh (void)
{
	if (	(Ecran.Solid == false)
		&&	((++ Ecran.Cpt) <= Ecran.tRate))
	{
		ecran_print_one_char(Ecran.Index, Ecran.Digits[Ecran.Index]);

		ecran_dot(Ecran.Dot[Ecran.Index]);

		if (++ Ecran.Index > 3)	{Ecran.Index = 0;}
	}
}