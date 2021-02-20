#include "pico/stdlib.h"
#include "hardware/pwm.h"

#define MOS_PIN 0
#define LED_PIN 25

bool alarm_pwm(struct repeating_timer *t);
volatile int level = 0;

int main()
{
    gpio_set_function(MOS_PIN, GPIO_FUNC_PWM);//Allocate LED Drive Pin to PWM function
    gpio_set_function(LED_PIN, GPIO_FUNC_PWM);//Allocate MOS Drive Pin to PWM function
    
    uint LED_slice = pwm_gpio_to_slice_num(LED_PIN);//Get PWM slice for LED pin
    uint MOS_slice = pwm_gpio_to_slice_num(MOS_PIN);//Get PWM slice for MOS pin
    
    pwm_set_wrap(LED_slice,10);//Set PWM wrap for LED slice limit to 10 cycles 
    pwm_set_enabled(LED_slice,true);//Enable PWM for slice

    pwm_set_wrap(MOS_slice,10);//Set PWM wrap for MOS slice limit to 10 cycles 
    pwm_set_enabled(MOS_slice,true);//Enable PWM for slice
    pwm_set_clkdiv(MOS_slice, 65535.0f);

    struct repeating_timer timer;//create repeating timer structure object
    add_repeating_timer_ms(-2000,alarm_pwm,NULL,&timer);//Call repeating alarm every 5s, call function alarm_pwm, send pwm_slice_num as input, no output pointer

    pwm_set_gpio_level(MOS_PIN, 10);//Set MOS duty cycle
    while(true)
        tight_loop_contents();//enter into forever loop

    return 0;
}


bool alarm_pwm(struct repeating_timer *t)
{
    // ++level;
    // if(level==10)
    //     level = 0;
    level = 9;

    pwm_set_gpio_level(LED_PIN, level);//Set PWM duty cycle
    pwm_set_gpio_level(MOS_PIN, level);//Set MOS duty cycle
    return true;
}

