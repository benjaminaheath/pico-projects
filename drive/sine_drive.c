#include "pico/stdlib.h"
#include "hardware/pwm.h"
#include "math.h"

#define DRIVE_PIN 25
#define PWM_RES 255

void init(uint interval_ms);
bool alarm_pwm(struct repeating_timer *t);
uint8_t get_sine_level();
volatile int level = 0;



int main()
{
    init(2000);//initialise loop and pass alarm interval

    while(true)
        tight_loop_contents();//emter into hardware polling loop

    return 0;
}

void init(uint interval_ms)//Initialise PWM and Alarm call
{
     gpio_set_function(DRIVE_PIN, GPIO_FUNC_PWM);//Allocate Drive Pin to PWM function
    
    uint slice = pwm_gpio_to_slice_num(DRIVE_PIN);//Get PWM slice for pin
    pwm_set_wrap(slice,PWM_RES);//Set pwm wrapping limit to the resolution
    pwm_set_enabled(slice,true);//Enable pwm on slice

    struct repeating_timer timer;//Create timer object
    add_repeating_timer_ms(-interval_ms,alarm_pwm,NULL,&timer);//Add repeating alarm per interval_ms, call function alarm_pwm, no input information, timer object pointer
}

bool alarm_pwm(struct repeating_timer *t)//Repeating alarm call 
{    
    level = get_sine_level();//get next sine level
    pwm_set_gpio_level(DRIVE_PIN, level);//Set PWM duty cycle
    return true;
}

uint8_t get_sine_level()//Get new PWM level
{
    static absolute_time_t old_time;//create prev time object
    static float period_ms = 20000;//define period in ms as 20s
    static float offset_ms = 1000;//define offset as 1s
    static int64_t time_from_start_ms = 0;//create static object representing time from start
    
    static bool init = false;
    if(!init)
        old_time = get_absolute_time();//initialise old time as present time
        
    absolute_time_t new_time = get_absolute_time();//get new time

    int64_t time_diff = absolute_time_diff_us(old_time, new_time);//get time difference between call as time between old and new readings

    time_from_start_ms += 1000* time_diff;//time from start in ms is summed as 1000* time difference in us

    uint8_t level = round(PWM_RES*cos((2*M_PI / period_ms) * time_from_start_ms + (2*M_PI / period_ms)*(offset_ms)));
    /* PWM level is:
     * cosine function of:
     *      w = 2*PI/T
     *      t = time from start
     *      +
     *      phi = 2*PI/T * Offset
     *  Multiplied by PWM resolution
     *  Rounded to nearest Level
     */
    old_time = new_time;//store present time as old time

    return level;
}

