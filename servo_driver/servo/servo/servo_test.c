#include "servo.h"

int main() {

	char speed = (char)0;
	char duty_cycle = (char)0;
	servo(0,0,0,0, &duty_cycle, &speed);

	if (duty_cycle != DEFAULT_DUTY_CYCLE_VALUE) {
		printf("ERROR: Duty Cycle %d\n", duty_cycle);
	}
	if (speed != DEFAULT_SPEED_VALUE) {
		printf("ERROR: Speed: %d \n", speed);
	}

	return 0;
}
