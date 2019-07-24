#ifndef MICRO_H
#define	MICRO_H

// Version
const char Version[] = "0009";

// Micro->Phase
#define MICRO_WAIT		0x00
#define MICRO_TEST		0x01
#define MICRO_ARM		0x02
#define MICRO_FEU		0x03

// Micro->Step
#define MICRO_STEP_1	0x00
#define MICRO_STEP_2	0x01
#define MICRO_STEP_3	0x03

// Micro.State
#define UNDEFINED		0x00
#define ARMED			0x01
#define GO				0x02
#define STOP			0x04
#define END				0x08

typedef struct StructState{
	unsigned	Armed	:1;
	unsigned	Go		:1;
	unsigned	Stop	:1;
	unsigned	End		:1;
}StruState;

typedef struct StructMod{
	unsigned	P_0		:1;	// Program qui active successivement les sorties dans l'ordre suivant [1-32]
	unsigned	P_00	:1;	// Program qui active successivement les sorties dans l'ordre souhaité par l'utilisateur
}StruMode;

typedef struct StructMicro {
	word		Time;
	byte		Phase;
	byte		Step;
	union {
		byte	State;
		struct	StructState	Stat;
	};
	union {
		byte				Mods;
		struct	StructMod	Mod;
	};
}struMicro;

struMicro Micro;

void micro_config_rs (void);
void micro_config (void);
void micro_wait (void);

#define _XTAL_FREQ		16000000.0

/* C access to assembler insructions */
#define	CLRWDT()	asm(" clrwdt")
#define	ClrWdt()	asm(" clrwdt")
// function version of nop
#pragma intrinsic(__nop)
extern void __nop(void);
#define NOP()		__nop()
#define	Nop()		__nop()
#define	RESET()		asm(" reset")
#define	Reset()		asm(" reset")
#define SLEEP()		asm(" sleep")
#define Sleep()		asm(" sleep")

/* Global Interrupt Enable */
#ifndef	ei
#define	ei()	(INTCONbits.GIE = 1) 	// Interrupts of Hi/Lo Priority or Peripheral interrupts
#endif

/* Global Interrupt Disable */
#ifndef	di
#define	di()	(INTCONbits.GIE = 0)	// Interrupts of Hi/Lo Priority or Peripheral interrupts
#endif



#endif	/* MICRO_H */

