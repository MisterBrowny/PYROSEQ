#ifndef CONFIG_H
#define	CONFIG_H

#define	NB_RELAY			32
#define	CF_SECTOR_SIZE		3
#define	CF_CONTROL_SIZE		5
#define	CF_SIZE				(NB_RELAY * CF_SECTOR_SIZE + CF_CONTROL_SIZE)

typedef struct StructConfig {
	byte			Data[CF_SIZE]; // 32 * 3  + 5
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

