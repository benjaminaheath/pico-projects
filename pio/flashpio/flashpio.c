#include <stdio.h>
#include "flashpio.pio.h"
#include "pico/stdlib.h"
#include "hardware/pio.h"

int main()
{
    PIO pio = pio0;
    uint offset = pio_add_program(pio, &flashpio_program);
    uint sm = pio_claim_unused_sm(pio,true);
    flashpio_program_init(pio, sm, offset,PICO_DEFAULT_LED_PIN);

    pio_sm_set_clkdiv(pio, sm, 0xFF);

    while(true)
    {
        uint32_t brightdrive = 0x0000;
        for(int i = 0; i<31;i++)
        {
            brightdrive = brightdrive | 1<<i;
            pio_sm_put_blocking(pio,sm,brightdrive);
        }
    }
    return 0;
}