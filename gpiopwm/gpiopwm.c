#include "pico/stdlib.h"
#include <stdio.h>
#include <math.h>
#include "pico/time.h"
#include "hardware/irq.h"
#include "hardware/pwm.h"


#define EXT_PIN 25
#define PI 3.14159

void on_pwm_wrap();

int main()
{
    gpio_set_function(EXT_PIN, GPIO_FUNC_PWM);

    uint slice = pwm_gpio_to_slice_num(EXT_PIN);

    pwm_clear_irq(slice);
    pwm_set_irq_enabled(slice,true);
    irq_set_exclusive_handler(PWM_IRQ_WRAP, on_pwm_wrap);
    irq_set_enabled(PWM_IRQ_WRAP,true);

    pwm_config c = pwm_get_default_config();
    pwm_config_set_clkdiv(&c, 4.f);
    pwm_init(slice,&c,true);

    while(true)
    {
        tight_loop_contents();
    }

    return 0;
}

void on_pwm_wrap()
{
    pwm_clear_irq(pwm_gpio_to_slice_num(EXT_PIN));
    static double i=0.0;
    i = i + 0.001; 
    double sine = 0xFFFF*(0.5*((sin(i/2*PI))+1));
    pwm_set_gpio_level(EXT_PIN, (uint16_t) sine);
}