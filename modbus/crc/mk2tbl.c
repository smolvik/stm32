#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <string.h>

// polynom 1 + x2 + x15 + x16
#define CRC_POLY 0xa001
#define CRC_POLY_INIT 0xffff 

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

int main(int argc, char **argv)
{
	unsigned short crc;
	int i, j, k;
	unsigned char test;
	unsigned char crc_table_low[256], crc_table_hi[256];	
	
	crc = 0;
	test = 0;
	for(i = 0; i < 256; i++)
	{
		crc = crc_div16(test, 0);

		//create two 8bit tables
		crc_table_low[test] = crc & 0xff;
		crc_table_hi[test] = (crc >> 8) & 0xff;
		test++;
	}
	
	k = 0;
	for(i = 0; i < 16; i++)
	{
		for(j = 0; j < 16; j++){
			printf("0x%x, ", crc_table_low[k++]); 
		}
		printf("\n");
	}	
	
	printf("\n");
	printf("\n");	
	
	k = 0;
	for(i = 0; i < 16; i++)
	{
		for(j = 0; j < 16; j++){
			printf("0x%x, ", crc_table_hi[k++]); 
		}
		printf("\n");
	}		
		
	return 0;
}
