#ifndef REGISTER_H
#define	REGISTER_H

// SN74HC585

#define REGIST_G		PORTAbits.RA2
#define REGIST_SERIE	PORTBbits.RB5
#define REGIST_SRCLR	PORTBbits.RB2
#define REGIST_SRCLK	PORTBbits.RB4
#define REGIST_RCLK		PORTBbits.RB3

typedef struct StructRelay{
	//word		ActualState;
	//word		State;
	//unsigned	Trigger	:1;
	byte		State[4];
}struRegister;

struRegister	Register;

void register_write (byte Output);
void register_refresh (void);

#endif	/* REGISTER_H */

