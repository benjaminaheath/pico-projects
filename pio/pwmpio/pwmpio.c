#include <stdio.h>
#include "pwmpio.pio.h"
#include "pico/stdlib.h"
#include "hardware/pio.h"

uint32_t pwm_set_word_level(uint level)
{
    uint32_t word_level = 0x0000;
    for(int i=0; i<level-1;i++)
    {
        word_level = word_level | 1<<i;
    }
    return word_level;
}

int main()
{
    PIO pio = pio0;
    uint offset = pio_add_program(pio, &pwmpio_program);
    uint sm = pio_claim_unused_sm(pio,true);
    pwmpio_program_init(pio, sm, offset,PICO_DEFAULT_LED_PIN);

    pio_sm_set_clkdiv(pio, sm, 0xFF);

    while(true)
    {
        pio_sm_put_blocking(pio,sm,0xFFFF);
        sleep_ms(100);
    }
    return 0;
}