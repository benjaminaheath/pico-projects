add_executable(pwm)

pico_generate_pio_header(pwm ${CMAKE_CURRENT_LIST_DIR}/pwm.pio)

target_sources(pwm PRIVATE pwm.c)

target_link_libraries(pwm PRIVATE pico_stdlib hardware_pio)
pico_add_extra_outputs(pwm)