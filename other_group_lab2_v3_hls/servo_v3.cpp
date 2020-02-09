//
//	FPGA Prototyping 2020
//
//	Lab 1
//

#include "servo_v3.h"

static char speed=0;
static char current_input=100;

void servo_v3(char *in_left,
		char *in_right,
		char *in_up,
		char *in_down,
		char *out_speed,
		char *out_control){
//		*a=2;
//		*b=3;
//		char c;
//		c=0;
//		*c=*a+*b;


		if(*in_up==1)
		{
			if(speed==8)
			{
				speed=8;
			}
			else
			{
				speed+=1;
			}
		}

		else
		{
			if(*in_down==1)
			{
				if(speed==0)
				{
					speed=0;
				}
				else
				{
					speed-=1;
				}
			}
		}
		*out_speed=speed;
}
