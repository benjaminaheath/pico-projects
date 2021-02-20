#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/pio.h"
#include "pwm.pio.h"

#define LED_GPIO 25
#define EXT_GPIO 0

//write the period to OSR
void pio_pwm_set_period(PIO pio, uint sm, uint32_t period)
{
    pio_sm_set_enabled(pio,sm,false);
    pio_sm_put_blocking(pio,sm,period);
    pio_sm_exec(pio,sm,pio_encode_pull(false,false));
    pio_sm_exec(pio,sm, pio_encode_out(pio_isr, 32));
    pio_sm_set_enabled(pio,sm,true);
}

void pio_pwm_set_level(PIO pio, uint sm, uint32_t level)
{
    pio_sm_put_blocking(pio,sm,level);
}

int main()
{
    stdio_init_all();

    PIO pio = pio0;
    int sm = 0;
    uint offset = pio_add_program(pio, &pwm_program);
    
    pwm_program_init(pio,sm,offset, LED_GPIO);
    pio_pwm_set_period(pio,sm, (1u<<16)-1);

    while(true)
    {
        pio_pwm_set_level(pio,sm,10);
        sleep_ms(10);
    }

    return 0;
}