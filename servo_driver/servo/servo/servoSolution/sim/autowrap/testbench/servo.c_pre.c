# 1 "C:/fpga/servo_driver/servo/servo/servo.c"
# 1 "C:/fpga/servo_driver/servo/servo/servo.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/fpga/servo_driver/servo/servo/servo.c" 2
# 1 "C:/fpga/servo_driver/servo/servo/servo.h" 1
# 12 "C:/fpga/servo_driver/servo/servo/servo.h"
void servo(char *up, char *down, char *left, char *right, char *dutyCycle, char *speed);
# 2 "C:/fpga/servo_driver/servo/servo/servo.c" 2

static char current_speed = 0;
static char current_duty_cycle = 150;

void servo(char *up, char *down, char *left, char *right, char *dutyCycle, char *speed)
{
 if (*down) {
  --current_speed;
 }

 if (*up) {
  ++current_speed;
 }

 if (*left) {
  current_duty_cycle -= current_speed;
 }

 if (*right) {
  current_duty_cycle += current_speed;
 }


 current_duty_cycle = (((((((char) 100)>(current_duty_cycle))?((char) 100):(current_duty_cycle)))<((char) 200))?(((((char) 100)>(current_duty_cycle))?((char) 100):(current_duty_cycle))):((char) 200));
 current_speed = (((((((char) 0)>(current_speed))?((char) 0):(current_speed)))<((char) 8))?(((((char) 0)>(current_speed))?((char) 0):(current_speed))):((char) 8));

 *dutyCycle = current_duty_cycle;
 *speed = current_speed;
}
