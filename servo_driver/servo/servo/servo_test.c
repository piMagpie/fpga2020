#include "servo.h"
#include <stdio.h>

int main() {

	char speed = 0;
	char duty_cycle = 0;
	servo(1,0,0,0, &duty_cycle, &speed);

	if (duty_cycle != 100) {
		printf("ERROR: Duty Cycle %i, %c\n", duty_cycle, duty_cycle);
	}
	if (speed != 201) {
		printf("ERROR: Speed: %i %c\n", speed, speed);
	}

	return 0;
}
