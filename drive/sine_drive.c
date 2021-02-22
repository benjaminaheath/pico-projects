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
    init(2000);

    while(true)
        tight_loop_contents();

    return 0;
}

void init(uint interval_ms)
{
     gpio_set_function(DRIVE_PIN, GPIO_FUNC_PWM);//Allocate Drive Pin to PWM function
    
    uint slice = pwm_gpio_to_slice_num(DRIVE_PIN);//Get PWM slice for pin
    pwm_set_wrap(slice,PWM_RES);
    pwm_set_enabled(slice,true);

    struct repeating_timer timer;
    add_repeating_timer_ms(-interval_ms,alarm_pwm,NULL,&timer);//Add repeating alarm per interval_ms, call function alarm_pwm, no input information, timer object pointer
}

bool alarm_pwm(struct repeating_timer *t)
{    
    level = get_sine_level();
    pwm_set_gpio_level(DRIVE_PIN, level);//Set PWM duty cycle
    return true;
}

uint8_t get_sine_level()
{
    static absolute_time_t old_time;
    static float period_ms = 1000* 20000;
    static float offset_ms = 1000* 1000;
    static int64_t time_from_start = 0;
    
    static bool init = false;
    if(!init)
        old_time = get_absolute_time();
        
    absolute_time_t new_time = get_absolute_time();

    int64_t time_diff = absolute_time_diff_us(old_time, new_time);
    time_from_start += time_diff;

    uint8_t level = round(PWM_RES*cos((2*M_PI / period_ms) * time_from_start + offset_ms));
    old_time = new_time;
    return level;
}

