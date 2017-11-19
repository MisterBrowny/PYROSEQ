#include "includes.h"

void register_write (byte Output)
{
	byte i;

	// Désactive la gachette
	REGIST_G = 0;

	// clear le registre
	REGIST_SRCLR = 0;
	REGIST_SRCLR = 1;

	REGIST_RCLK = 0;

	for (i = 32; i > 0; i --)
	{
		REGIST_SRCLK = 0;
		
		if (Output == i)	{REGIST_SERIE = 1;}
		else				{REGIST_SERIE = 0;}

		REGIST_SRCLK = 1;
	}

	REGIST_RCLK = 1;

	// réactive la gachette
	REGIST_G = 1;
}

/*void register_write (void)
{
	byte i, j, temp;
	
	// commence par clear le registre
	REGIST_SRCLR = 0;
	REGIST_SRCLR = 1;

	REGIST_SRCLK = 0;
	REGIST_RCLK = 1;

	REGIST_SERIE = 0;
	
	for (i = 4, temp = 0x80; i > 0; i --)
	{
		for (j = 0; j < 8; j ++, temp >>= 1)
		{
			REGIST_SRCLK = 0;
			REGIST_RCLK = 1;
			
			if (Register.State[(i - 1)] & temp)	{REGIST_SERIE = 1;}
			
			REGIST_SRCLK = 1;
			REGIST_RCLK = 0;
		}
	}

	REGIST_SERIE = 1;
	REGIST_SERIE = 0;
}*/


void register_refresh (void)
{
	//if (Register.ActualState)
}



