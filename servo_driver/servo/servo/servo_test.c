#include "servo.h"
#include <stdio.h>

int main() {

	unsigned char speed = 0;
	unsigned char duty_cycle = 0;
	unsigned char up = 1,down = 0,left = 0,right = 0;
	servo(&up, &down, &left, &right, &duty_cycle, &speed);

	if (duty_cycle != DEFAULT_DUTY_CYCLE_VALUE) {
		printf("ERROR: Duty Cycle %i, %c\n", duty_cycle, duty_cycle);
	}
	if (speed != 1) {
		printf("ERROR: Speed: %i %c\n", speed, speed);
	}

	return 0;
}
