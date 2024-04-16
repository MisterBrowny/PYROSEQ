#ifndef CONFIG_H
#define	CONFIG_H

#define PAUSE_VALUE         99  // MOD_V0010: valeur de sortie pour activer la pause
#define NB_PAUSE_MAX        5   // MOD_V0010: nb de pause max dans la séquence
#define	NB_RELAY			32
#define	CF_SECTOR_SIZE		3
#define	CF_CONTROL_SIZE		5
#define	CF_SIZE				(NB_RELAY * CF_SECTOR_SIZE + NB_PAUSE_MAX * CF_SECTOR_SIZE + CF_CONTROL_SIZE) // MOD_V0010

#define OFFSET_LAST_OUTPUT  (NB_RELAY * CF_SECTOR_SIZE + NB_PAUSE_MAX * CF_SECTOR_SIZE)
#define OFFSET_CHECKSUM_1   (OFFSET_LAST_OUTPUT + 1)
#define OFFSET_CHECKSUM_2   (OFFSET_LAST_OUTPUT + 2)
#define OFFSET_CHECKSUM_3   (OFFSET_LAST_OUTPUT + 3)
#define OFFSET_CHECKSUM_4   (OFFSET_LAST_OUTPUT + 4)

typedef struct StructConfig {
	byte			Data[CF_SIZE]; // 32 * 3  + 5 * 3 + 5 // MOD_V0010
	volatile byte	Index;
	volatile word	Time1;
	word			Time2;
	unsigned		IsLong :1;			
}struConfig;

struConfig	Cf;

byte cf_check (void);
void cf_check_and_display (void);
void cf_rcv (void);


#endif	/* CONFIG_H */

