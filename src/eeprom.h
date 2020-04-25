#define		SECTOR1    		    0x0000
#define		SECTOR2	            0x0200
#define     MOVC_START_ADDRESS  0xF000

#define     MOTOR_EEPROM        SECTOR1
#define     MOTORST_EEPROM      MOTOR_EEPROM+1
#define     BAOCAO_EEPROM       MOTORST_EEPROM+1
#define     GPSON_EEPROM        BAOCAO_EEPROM+1
#define     NGAYRESET_EEPROM    GPSON_EEPROM+1
#define     GIORESET_EEPROM     NGAYRESET_EEPROM+1
#define     NORRESET_EEPROM     GIORESET_EEPROM+1
#define     GIOSACXA_EEPROM     NORRESET_EEPROM+1
#define     TATMODEN_EEPROM     GIOSACXA_EEPROM+1
#define     MP3_EEPROM          TATMODEN_EEPROM+9
#define     PHONEPHU_EEPROM     MP3_EEPROM+1
#define     LOITHESIM_EEPROM    PHONEPHU_EEPROM+12
#define     SOMOTOR_EEPROM      LOITHESIM_EEPROM+1

#define     SECTOR1_LENGTH      SOMOTOR_EEPROM+1

#define		PHUT2_EEPROM		0x03FC
#define		GIO2_EEPROM		    0x03FD
#define		PHUT1_EEPROM		0x03FE
#define		GIO1_EEPROM		    0x03FF


#define motorEEprom                 MOTOR_EEPROM+MOVC_START_ADDRESS
#define motorSTEEprom               MOTORST_EEPROM+MOVC_START_ADDRESS
#define baocaoEEprom                BAOCAO_EEPROM+MOVC_START_ADDRESS
#define gpsonEEprom                 GPSON_EEPROM+MOVC_START_ADDRESS
#define ngayresetEEprom             NGAYRESET_EEPROM+MOVC_START_ADDRESS
#define gioresetEEprom              GIORESET_EEPROM+MOVC_START_ADDRESS
#define norresetEEprom              NORRESET_EEPROM+MOVC_START_ADDRESS
#define giosacxaEEprom              GIOSACXA_EEPROM+MOVC_START_ADDRESS
#define tatmodenEEprom              TATMODEN_EEPROM+MOVC_START_ADDRESS
#define mp3EEprom                   MP3_EEPROM+MOVC_START_ADDRESS
#define phonephuEEprom              PHONEPHU_EEPROM+MOVC_START_ADDRESS
#define loithesimEEprom             LOITHESIM_EEPROM+MOVC_START_ADDRESS
#define somotorEEprom               SOMOTOR_EEPROM+MOVC_START_ADDRESS

#define phut1EEprom					PHUT1_EEPROM+MOVC_START_ADDRESS
#define gio1EEprom					GIO1_EEPROM+MOVC_START_ADDRESS
#define phut2EEprom					PHUT2_EEPROM+MOVC_START_ADDRESS
#define gio2EEprom					GIO2_EEPROM+MOVC_START_ADDRESS


__code __at     motorEEprom         u8 eep_motor;
__code __at     motorSTEEprom       u8 eep_motorST;
__code __at     baocaoEEprom        u8 eep_baocao;
__code __at     gpsonEEprom         u8 eep_gpson;
__code __at     ngayresetEEprom     u8 eep_ngayreset;
__code __at     gioresetEEprom      u8 eep_gioreset;
__code __at     norresetEEprom      u8 eep_norreset;
__code __at     giosacxaEEprom      u8 eep_giosacxa;
__code __at     tatmodenEEprom      u8 eep_tatmoden[9];
__code __at     mp3EEprom           u8 eep_mp3;
__code __at     phonephuEEprom      u8 eep_phonephu[12];
__code __at     loithesimEEprom     u8 eep_loithesim;
__code __at     somotorEEprom       u8 eep_somotor;

__code __at     phut1EEprom          u8 eep_phut1; 
__code __at     gio1EEprom           u8 eep_gio1; 
__code __at     phut2EEprom          u8 eep_phut2; 
__code __at     gio2EEprom           u8 eep_gio2; 

extern u8  __xdata eeprom_buf[SECTOR1_LENGTH];

#define	CMD_IDLE		0
#define	CMD_READ		1
#define	CMD_PROGRAM		2
#define	CMD_ERASE		3

void IAP_ghibyte(u16 diachi,u8 dulieu);
void IAP_ghisector1();
void IAP_docxoasector1();
void IAP_xoasector(u16 sector);

/********** Eeprom *****************/

//#define ENABLE_IAP 0x80 //if SYSCLK<30MHz
//#define ENABLE_IAP 0x81 //if SYSCLK<24MHz
//#define ENABLE_IAP 0x82 //if SYSCLK<20MHz
#define ENABLE_IAP 0x83 //if SYSCLK<12MHz
//#define ENABLE_IAP 0x84 //if SYSCLK<6MHz
//#define ENABLE_IAP 0x85 //if SYSCLK<3MHz
//#define ENABLE_IAP 0x87 //if SYSCLK<1MHz
//#define ENABLE_IAP 0x86 //if SYSCLK<2MHz