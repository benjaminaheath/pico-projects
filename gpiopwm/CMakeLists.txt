add_executable(gpiopwm)

target_sources(gpiopwm PRIVATE gpiopwm.c)

target_link_libraries(gpiopwm PRIVATE pico_stdlib hardware_pwm)
pico_add_extra_outputs(gpiopwm)