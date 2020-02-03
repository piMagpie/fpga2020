#define MIN(a,b) (((a)<(b))?(a):(b))
#define MAX(a,b) (((a)>(b))?(a):(b))

#define MIN_SPEED_VALUE 0
#define MAX_SPEED_VALUE 8
#define DEFAULT_SPEED_VALUE 0

#define MIN_DUTY_CYCLE_VALUE 100
#define MAX_DUTY_CYCLE_VALUE 200
#define DEFAULT_DUTY_CYCLE_VALUE 150

void servo(const char up, const char down, const char left, const char right, char *dutyCycle, char *speed);
