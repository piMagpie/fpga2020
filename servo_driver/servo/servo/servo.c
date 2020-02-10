#include "servo.h"

static unsigned char current_speed = DEFAULT_SPEED_VALUE; // default value is 0
static unsigned char current_duty_cycle = DEFAULT_DUTY_CYCLE_VALUE; // default value is 150

void servo(unsigned char *up, unsigned char *down, unsigned char *left, unsigned char *right, unsigned char *dutyCycle, unsigned char *speed)
{
	if (*down) {
		if (current_speed) --current_speed;
	}

	if (*up) {
		if (current_speed<MAX_SPEED_VALUE) ++current_speed;
	}

	if (*left) {
		current_duty_cycle -= current_speed;
	}

	if (*right) {
		current_duty_cycle += current_speed;
	}

	/* TRUNCATION OF THE DUTY CYCLE */
	current_duty_cycle = MIN(MAX(MIN_DUTY_CYCLE_VALUE, current_duty_cycle), MAX_DUTY_CYCLE_VALUE);
	current_speed = MIN(MAX(MIN_SPEED_VALUE, current_speed), MAX_SPEED_VALUE);

	*dutyCycle = current_duty_cycle;
	*speed = current_speed;
}


