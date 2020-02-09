#include <iostream>
#include "servo_v3.h"

using namespace std;

int main(int argc, char **argv)
{
	char in_left=0;
	char in_right=0;
	char in_up=1;
	char in_down=0;
	char out_speed;
	char out_control;
	servo_v3(&in_left, &in_right, &in_up, &in_down, &out_speed, &out_control);

	if (out_speed==1)
	{
		cout << "speed:1"<<endl;
	}
	else
	{
		cout<<"error"<<endl;
	}

//	cout << "speed:" << out_speed << endl;


	return 0;
}
