#include "servo.h"

static char current_speed = 0; // default value is 0
static char current_duty_cycle = 150; // default value is 150

void servo(char up, char down, char left, char right, char *dutyCycle, char *speed)
{
	if (down && current_speed > MIN_SPEED_VALUE) {
		--current_speed;
	}

	if (up && current_speed < MAX_SPEED_VALUE) {
		++current_speed;
	}

	if (left) {
		current_duty_cycle -= current_speed;
	}

	if (right) {
		current_duty_cycle += current_speed;
	}

	/* TRUNCATION OF THE DUTY CYCLE */
	*dutyCycle = MIN(MAX(MIN_DUTY_CYCLE_VALUE, current_duty_cycle), MAX_DUTY_CYCLE_VALUE);
	*speed = MIN(MAX(MIN_SPEED_VALUE, current_speed), MAX_SPEED_VALUE);
}


