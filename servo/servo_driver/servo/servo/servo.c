#include "servo.h"

static unsigned char current_speed = DEFAULT_SPEED_VALUE; // default value is 1
static unsigned char current_duty_cycle = DEFAULT_DUTY_CYCLE_VALUE; // default value is 150


void servo(unsigned char *_up, unsigned char *_down, unsigned char *_left, unsigned char *_right, unsigned char *_dutyCycle, unsigned char *_speed)
{
	if (*_down && current_speed > MIN_SPEED_VALUE) {
		--current_speed;
	}

	if (*_up && current_speed < MAX_SPEED_VALUE) {
		++current_speed;
	}

	if (*_left && (current_duty_cycle - current_speed) >= MIN_DUTY_CYCLE_VALUE) {
		current_duty_cycle -= current_speed;
	}

	if (*_right && (current_duty_cycle + current_speed) <= MAX_DUTY_CYCLE_VALUE) {
		current_duty_cycle += current_speed;
	}

	*_dutyCycle = current_duty_cycle;
	*_speed = current_speed;
}


