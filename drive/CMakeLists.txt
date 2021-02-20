add_executable(drive)
add_executable(drive2)
add_executable(sine_drive)

target_sources(drive PRIVATE drive.c)
target_sources(drive2 PRIVATE drive2.c)
target_sources(sine_drive PRIVATE sine_drive.c)

target_link_libraries(drive PRIVATE pico_stdlib hardware_pwm)
target_link_libraries(drive2 PRIVATE pico_stdlib hardware_pwm)
target_link_libraries(sine_drive PRIVATE pico_stdlib hardware_pwm)

pico_add_extra_outputs(drive)
pico_add_extra_outputs(drive2)
pico_add_extra_outputs(sine_drive)