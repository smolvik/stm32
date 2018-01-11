#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <string.h>

// polynom 1 + x2 + x15 + x16
#define CRC_POLY 0xa001
#define CRC_POLY_INIT 0xffff 

unsigned short crc_table[256];
unsigned char crc_table_low[256];
unsigned char crc_table_hi[256];	

unsigned char buf[] = {0x02, 0x07, 0x43, 0x56, 0x78, 0xad};

extern unsigned short crc16(unsigned char *buf, int len);

unsigned short crc_div16(unsigned char byte, unsigned short reg)
{
	register unsigned short buf;
	int i;
	
	buf = reg ^ byte;
	
	for(i = 0; i < 8; i++)
	{
		if(buf & 0x0001)
		{
			buf = buf >> 1;
			buf = buf ^ CRC_POLY;			
		}
		else{
			buf = buf >> 1;
		}
	}
	return buf;
}

void create_crc_tables(void)
{
	unsigned short crc;
	unsigned char test;
	int i;
	
	crc = 0;
	test = 0;
	for(i = 0; i < 256; i++)
	{
		crc = crc_div16(test, 0);
		
		// create one 16bit table 
		crc_table[test] = crc;		
		//create two 8bit tables
		crc_table_low[test] = crc & 0xff;
		crc_table_hi[test] = (crc >> 8) & 0xff;
		test++;
	}	
}

void test_2tables()
{
	unsigned char crc_hi, crc_low;
	int i;
	
	// table crc algorithm using two tables
	crc_low = CRC_POLY_INIT & 0xff;
	crc_hi = (CRC_POLY_INIT & 0xff00) >> 8;
	for(i = 0; i < sizeof(buf); i++)
	{			
		int idx;
		
		idx = 0xff&(crc_low ^ buf[i]);		
		crc_low =  crc_table_low[idx] ^ crc_hi;
		crc_hi = crc_table_hi[idx];
	}
	printf("crc = %x%x\r\n", crc_hi, crc_low);	
}

void test_1table()
{
	int i;
	unsigned short crc;
	
	// table crc algorithm using one table
	crc = CRC_POLY_INIT;
	for(i = 0; i < sizeof(buf); i++)
	{
		crc = (0xff&((unsigned char*)&crc)[1]) ^ crc_table[0xff&(crc^buf[i])];
	}	
	printf("crc = %x\r\n", crc);	
}

int main(int argc, char **argv)
{	
	unsigned short crc;
	int i;		
	
	create_crc_tables();
	test_2tables();
	test_1table();

	crc = crc16(&buf[0], sizeof(buf));
	printf("crc = %x\r\n", crc);

	// expicit crc algorithm
	crc = CRC_POLY_INIT;
	for(i = 0; i < sizeof(buf); i++){
		crc = crc_div16(buf[i], crc);
	}		
	
	printf("crc = %x\r\n", crc);
			
	return 0;
}
