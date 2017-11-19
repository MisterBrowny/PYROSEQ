#ifndef FEU_H
#define	FEU_H

// Temps activation infla en ms (Attention ce temps ne doit pas dépasser 50ms)
#define DefTempsTir			40

// Temps d'attente minimum pour stopper la séquence automatique en cours
#define TIME_TO_STOP		1000

// Etape du feu d'artifice
#define FEU_ARMED			0x00
#define FEU_SELECT			0x01
#define FEU_GO				0x02
#define FEU_SELECT_P0		0x03
#define FEU_GO_P0			0x04
#define FEU_WAIT_P0			0x05
#define FEU_STOP			0x06
#define FEU_RESTART			0x07
#define FEU_END				0x08

volatile byte Decompte;
volatile word Cpt1Sur20s;


typedef struct	StructFeu{
	byte		Step;
	byte		Cpt;
	byte		Decompte;
	word		SavedTime;
	word		TimeToFire;
	word		Time;
	word		TimeStart;
	byte		LastOutput;	// dernière sortie tirée
	byte		NextOutput;	// prochaine sortie à tirer
	unsigned	CanStopStart	:1;
	unsigned	SaveTime		:1;
}struFeu;

struFeu Feu;

void feu_check_bp (void);
void feu_process (void);

#endif	/* FEU_H */

