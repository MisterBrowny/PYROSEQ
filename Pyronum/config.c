#include "includes.h"

// on verifie que le checksum et bien le meme que la valeur en memoire OFFSET_CHECKSUM_1, OFFSET_CHECKSUM_2, OFFSET_CHECKSUM_3 et OFFSET_CHECKSUM_4 (4 octets)
static bit cf_checksum (void)
{
	dword calcul;
	byte i, valid = false;
	
	for (i = 0, calcul = 0; i < (NB_RELAY + NB_PAUSE_MAX); i ++)    // MOD_V0010
	{
		calcul += (dword) ((word) (Cf.Data[i*CF_SECTOR_SIZE+1] << 8) + Cf.Data[i*CF_SECTOR_SIZE+2]);
	}

	if (	(((calcul >> 24) & 0x000000FF) == Cf.Data[OFFSET_CHECKSUM_1])   // MOD_V0010
		 &&	(((calcul >> 16) & 0x000000FF) == Cf.Data[OFFSET_CHECKSUM_2])   // MOD_V0010
		 &&	(((calcul >> 8) & 0x000000FF) == Cf.Data[OFFSET_CHECKSUM_3])    // MOD_V0010    
		 &&	((calcul & 0x000000FF) == Cf.Data[OFFSET_CHECKSUM_4]))          // MOD_V0010
	{
		valid = true;
	}
        
	if ((Cf.Data[OFFSET_CHECKSUM_1] == 0) && (Cf.Data[OFFSET_CHECKSUM_2] == 0) && (Cf.Data[OFFSET_CHECKSUM_3] == 0) && (Cf.Data[OFFSET_CHECKSUM_4] == 0))   // MOD_V0010
	{// Program_0
		Micro.Mod.P_00 = true;
	}

	if (calcul > 0x0000FFFF)	{Cf.IsLong = true;}
		
	return valid;
}

// on verifie que le dernier relais programme et bien le meme que la valeur en memoire OFFSET_LAST_OUTPUT
static bit cf_checkout (void)
{
	byte i, valid = false;
	byte last_out = 0;

	for (i = 0; i < (NB_RELAY + NB_PAUSE_MAX); i ++)    // MOD_V0010
	{
		if (Cf.Data[i*CF_SECTOR_SIZE] == 0) 
		{
			if (i == 0)	{return valid;}						// erreur pas de sortie selectionnée

			if (last_out == 0)
			{
				last_out = Cf.Data[(i - 1) * CF_SECTOR_SIZE];	// save la valeur de la dernière sortie
			}
		}
		else
		{
			if (last_out != 0)	{return valid;}				// erreur une valeur a été mise à 0 avant
		}
	}

	if (	((last_out != 0) && (last_out == Cf.Data[OFFSET_LAST_OUTPUT]))
		||	((last_out == 0) && (Cf.Data[i*CF_SECTOR_SIZE] == Cf.Data[OFFSET_LAST_OUTPUT])))
	{
		valid = true;
	}
	
	return valid;
}

// on verifie qu'il n'y a pas d'appel de relais > a 32
// MOD_V0010 : on permet la valeur PAUSE_VALUE pour la pause
static bit cf_checkrange (void)
{
	byte i, valid = false;

	for (i = 0; i < (NB_RELAY + NB_PAUSE_MAX); i ++)    // MOD_V0010
	{
		if (    (Cf.Data[i*CF_SECTOR_SIZE] > 32)
            &&  (Cf.Data[i*CF_SECTOR_SIZE] != PAUSE_VALUE)) // MOD_V0010
        {
            return valid;
        }
	}

	valid = true;
	
	return valid;
}

byte cf_check (void)
{
	byte valid = false;

	if (cf_checksum() && cf_checkout() && cf_checkrange())
	{
		valid = true;
	}

	return valid;
}

// fonction de control de la validite du programme (sinon affichage "E")
void cf_check_and_display (void)
{
	byte configOk = false;
	word temp;

	eeprom_read_array(&Cf.Data[0], 0, CF_SIZE);

	configOk = cf_check();

	if (configOk == true)
	{
		// affichage des 4 octets de poids fort du checksum
		if (Cf.IsLong == true)
		{
			Ecran.Digit[0] = ' ';
			Ecran.Digit[1] = ' ';
			Ecran.Digit[2] = HexToAscii(MSB_BYTE(Cf.Data[OFFSET_CHECKSUM_2]));
			Ecran.Digit[3] = HexToAscii(LSB_BYTE(Cf.Data[OFFSET_CHECKSUM_2]));

			Ecran.Digits = Ecran.Digit;

			temp = Cptms;
			
			while(TempsInf(temp,TDef1sec))	{ecran_refresh();}
		}
		
		Ecran.Digit[0] = HexToAscii(MSB_BYTE(Cf.Data[OFFSET_CHECKSUM_3]));
		Ecran.Digit[1] = HexToAscii(LSB_BYTE(Cf.Data[OFFSET_CHECKSUM_3]));
		Ecran.Digit[2] = HexToAscii(MSB_BYTE(Cf.Data[OFFSET_CHECKSUM_4]));
		Ecran.Digit[3] = HexToAscii(LSB_BYTE(Cf.Data[OFFSET_CHECKSUM_4]));

		Ecran.Digits = Ecran.Digit;
	}
	else
	{
		ecran_print_one_char(3, 'E');
		while (true);
	}
}

void cf_rcv (void)
{
	byte i, temp = false;
	
	if (TempsSup(Cf.Time2,TDef100ms))
	{
		Cf.Time2 = Cptms;

		di();
		if (TempsSup(Cf.Time1, TDef100ms)) {Cf.Index = 0;}// Rx time out
		ei();
	}
	else if (Cf.Index == CF_SIZE)
	{// Rx complete
		RCIE = 0;										// Désactive Rx interrupt

		temp = cf_check();								// Check config

		if (temp == false)
		{// config nok
			ecran_print_one_char(3, 'E');
		}
		else
		{// config ok

			eeprom_write_array(&Cf.Data[0], 0, CF_SIZE);	// Write config

			for (i = 0; i < CF_SIZE; i ++)					// Raz config
			{
				Cf.Data[i] = 0;
			}

			eeprom_read_array(&Cf.Data[0], 0, CF_SIZE);		// Read config

			temp = cf_check();								// 2ème check config

			if (temp == false)
			{// ecriture eeprom nok
				ecran_print_one_char(3, 'E');
			}
			else
			{// ecriture eeprom ok
				ecran_print_one_char(3, 'P');
			}
		}
		
		Cf.Index = 0;									// Raz index

		RCIE = 1;										// Réactive Rx interrupt
	}
}


