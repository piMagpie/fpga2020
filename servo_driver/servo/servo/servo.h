#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

#define MIN_SPEED_VALUE (unsigned char) 0
#define MAX_SPEED_VALUE (unsigned char) 8
#define DEFAULT_SPEED_VALUE (unsigned char) 0

#define MIN_DUTY_CYCLE_VALUE (unsigned char) 100
#define MAX_DUTY_CYCLE_VALUE (unsigned char) 200
#define DEFAULT_DUTY_CYCLE_VALUE (unsigned char) 150

void servo(unsigned char *up, unsigned char *down, unsigned char *left, unsigned char *right, unsigned char *dutyCycle, unsigned char *speed);
