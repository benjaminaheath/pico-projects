#include "pico/stdlib.h"
#include "hardware/pwm.h"

#define DRIVE_PIN 25
bool alarm_pwm(struct repeating_timer *t);
volatile int level = 0;

int main()
{
    gpio_set_function(DRIVE_PIN, GPIO_FUNC_PWM);//Allocate Drive Pin to PWM function
    
    uint slice = pwm_gpio_to_slice_num(DRIVE_PIN);//Get PWM slice for pin
    pwm_set_wrap(slice,10);
    pwm_set_enabled(slice,true);

    struct repeating_timer timer;
    add_repeating_timer_ms(-200,alarm_pwm,NULL,&timer);//Add repeating alarm every 1s, call function alarm_pwm, send pwm_slice_num as input, no output pointer

    while(true)
        tight_loop_contents();

    return 0;
}


bool alarm_pwm(struct repeating_timer *t)
{
    ++level;
    if(level==10)
        level = 0;
    
    pwm_set_gpio_level(DRIVE_PIN, level);//Set PWM duty cycle
    return true;
}

