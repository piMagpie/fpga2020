#include "servo.h"

static int current_speed = DEFAULT_SPEED_VALUE; // default value is 0
static int current_duty_cycle = DEFAULT_DUTY_CYCLE_VALUE; // default value is 150

void servo(const char up, const char down, const char left, const char right, char *dutyCycle, char *speed)
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

	*dutyCycle = (char)current_duty_cycle;
	*speed = (char)current_speed;
	/* TRUNCATION OF THE DUTY CYCLE */
	//*dutyCycle = MIN(MAX(MIN_DUTY_CYCLE_VALUE, current_duty_cycle), MAX_DUTY_CYCLE_VALUE);
	//*speed = MIN(MAX(MIN_SPEED_VALUE, current_speed), MAX_SPEED_VALUE);
}


