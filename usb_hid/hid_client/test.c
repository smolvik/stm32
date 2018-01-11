#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <linux/hiddev.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>
#include <fcntl.h>

#define VENDOR_ID 0xc251 
#define PRODUCT_ID 0x1301
#define MAX_DESCRIPTORS  50

#define LED5	5
#define LED6	6
#define LED7	7

#define LED_OFF	0
#define LED_ON	1

int deviceDescriptor = -1;
char devicePath[256];

//these structs hold information about the reports
struct hiddev_report_info inReportInfo;
struct hiddev_report_info outReportInfo;
//information about the endpoint usage
struct hiddev_usage_ref_multi inUsage;
struct hiddev_usage_ref_multi outUsage;
//information about the device
struct hiddev_devinfo deviceInfo;

int InitializeUSB(int VID, int PID)
{	
	int i = 0;
	
	printf("Searching divice (VID 0x%04X and PID 0x%04X)\n",VID, PID);
	//search amongst the first MAX_DESCRIPTORS descriptors in "/dev/usb/hiddev%d"
	// for the device's VID & PID
	for( i = 0 ; i<MAX_DESCRIPTORS ;i++)
	{
		sprintf(devicePath,"/dev/usb/hiddev%d",i);
		deviceDescriptor = open(devicePath,O_RDONLY);
		if(deviceDescriptor >= 0)//if file was opened properly
		{
			ioctl(deviceDescriptor, HIDIOCGDEVINFO, &deviceInfo);
			
			printf("(VID 0x%04X and PID 0x%04X)\n",deviceInfo.vendor, deviceInfo.product);
			
			if((deviceInfo.vendor == (short)VID) && (deviceInfo.product == (short)PID))
			{
				printf("Device found: %s\n",devicePath);
				break;
			}
		}
	}

	if(i >= MAX_DESCRIPTORS)
	{
		printf("USB sensors not found!\n");
		return -1;
	}
	
	return 0;
}

void  print_hiddev_info(int fd)
{
	struct hiddev_usage_ref	uref;
	struct hiddev_report_info rinfo;
	struct hiddev_field_info finfo;
	int ret = 0;
	int i, j;
	
	rinfo.report_type = HID_REPORT_TYPE_INPUT;
	rinfo.report_id = HID_REPORT_ID_FIRST;
	
	ret = ioctl(fd, HIDIOCGREPORTINFO, &rinfo);
	
	while (ret >= 0) 
	{
		printf("report info:\r\n");
		printf("report_id=%x\r\n", rinfo.report_id);
		printf("report_type=%x\r\n", rinfo.report_type);
		printf("num_fields=%x\r\n", rinfo.num_fields);  	
		printf("****************************\r\n");
				 
		for (i = 0; i < rinfo.num_fields; i++) {
			finfo.report_type = rinfo.report_type;
			finfo.report_id = rinfo.report_id;
			finfo.field_index = i;
			ioctl(deviceDescriptor, HIDIOCGFIELDINFO, &finfo);
			
			printf("field info:\r\n");
			printf("report_type=%X\r\n", finfo.report_type);
			printf("report_id=%X\r\n", finfo.report_id);
			printf("field_index=%X\r\n", finfo.field_index);
			printf("maxusage=%X\r\n", finfo.maxusage);
			printf("flags=%X\r\n", finfo.flags);
			printf("physical=%X\r\n", finfo.physical);
			printf("logical=%X\r\n", finfo.logical);
			printf("application=%X\r\n", finfo.application);
			printf("logical_minimum=%X\r\n", finfo.logical_minimum);
			printf("physical_minimum=%X\r\n", finfo.physical_minimum);
			printf("physical_maximum=%X\r\n", finfo.physical_maximum);
			printf("unit_exponent=%X\r\n", finfo.unit_exponent);
			printf("unit=%X\r\n", finfo.unit);
			printf("****************************\r\n");  		
			
			for (j = 0; j < finfo.maxusage; j++) 
			{				
				uref.report_type = rinfo.report_type;
				uref.report_id = rinfo.report_id;
				uref.field_index = i;
				uref.usage_index = j;
				ioctl(fd, HIDIOCGUCODE, &uref);
				ioctl(fd, HIDIOCGUSAGE, &uref);
				
				printf("usage ref:\r\n");
				printf("report_type=%X\r\n", uref.report_type);
				printf("report_id=%X\r\n", uref.report_id);
				printf("field_index=%X\r\n", uref.field_index);
				printf("usage_index=%X\r\n", uref.usage_index);
				printf("usage_code=%X\r\n", uref.usage_code);
				printf("value=%X\r\n", uref.value);
				printf("****************************\r\n");  		
			}
		}
		rinfo.report_id |= HID_REPORT_ID_NEXT;
		ret = ioctl(fd, HIDIOCGREPORTINFO, &rinfo);  	
	}	
}

int get_button_state(int but_index)
{
	struct hiddev_usage_ref	uref;
	struct hiddev_report_info rinfo;
	
	// read from device
	rinfo.report_type = HID_REPORT_TYPE_INPUT;
	rinfo.report_id = HID_REPORT_ID_FIRST;
	rinfo.num_fields = 1;
	
	uref.report_type = HID_REPORT_TYPE_INPUT;
	uref.report_id = HID_REPORT_ID_FIRST;
	uref.field_index = 0;
	uref.usage_index = but_index;
	
	//read
	ioctl(deviceDescriptor,HIDIOCGUSAGE, &uref); 
	ioctl(deviceDescriptor,HIDIOCGREPORT, &rinfo);
	
	return uref.value;
}

void led_control(int led_index, unsigned char val)
{
	struct hiddev_usage_ref	uref;
	struct hiddev_report_info rinfo;
	
	// To do a GUSAGE/SUSAGE, fill in at least usage_code,  report_type and 
	// report_id.  Set report_id to REPORT_ID_UNKNOWN if the rest of the fields 
	// are unknown.  Otherwise use a usage_ref struct filled in from a previous 
	// successful GUSAGE call to save time.  To actually send a value to the
	// device, perform a SUSAGE first, followed by a SREPORT.  An INITREPORT or a
	// GREPORT isn't necessary for a GUSAGE to return valid data.
	
	// write to device
	rinfo.report_type = HID_REPORT_TYPE_OUTPUT;
	rinfo.report_id = HID_REPORT_ID_FIRST;
	rinfo.num_fields = 1;
	
	uref.report_type = HID_REPORT_TYPE_OUTPUT;
	uref.report_id = HID_REPORT_ID_FIRST;
	uref.field_index = 0;
	uref.usage_index = led_index;
	uref.value = val;
	
	ioctl(deviceDescriptor,HIDIOCSUSAGE, &uref);
	ioctl(deviceDescriptor,HIDIOCSREPORT, &rinfo); 
}	

int main(void) 
{
	struct hiddev_event event;	
	
	if(InitializeUSB(VENDOR_ID, PRODUCT_ID) < 0)
	{
		return 0;
	}


//	print_hiddev_info(deviceDescriptor);
	
	/*
	led_control(LED5, LED_OFF);
	led_control(LED6, LED_OFF);
	led_control(LED7, LED_OFF);

	printf("led1 is on\r\n");
	led_control(LED5, LED_ON); sleep(1);
	printf("led2 is on\r\n");
	led_control(LED6, LED_ON); sleep(1);
	printf("led3 is on\r\n");
	led_control(LED7, LED_ON); sleep(1);

	printf("led1 is off\r\n");	
	led_control(LED5, LED_OFF); sleep(1);
	printf("led2 is off\r\n");	
	led_control(LED6, LED_OFF); sleep(1);
	printf("led3 is off\r\n");	
	led_control(LED7, LED_OFF); sleep(1);

	while(1)
	{
		int i;
		printf("please press the buttons:0x%02X 0x%02X 0x%02X\r", 
		get_button_state(0), get_button_state(1), get_button_state(2));
	}
*/

	while(1)
	{
		int sz = 0;
		sz = read(deviceDescriptor, &event, sizeof(event));
		if(sz < 0)
		{
			perror("hiddev read");
			return 1;
		}
		else
		{
			printf("event.hid=%02X event.value=%02X\r\n", event.hid, event.value);
		}
	
	}


	close(deviceDescriptor);

	return 0;
} 
