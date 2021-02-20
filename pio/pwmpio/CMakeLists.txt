add_executable(pwmpio)

pico_generate_pio_header(pwmpio ${CMAKE_CURRENT_LIST_DIR}/pwmpio.pio)

target_sources(pwmpio PRIVATE pwmpio.c)

target_link_libraries(pwmpio PRIVATE pico_stdlib hardware_pio)
pico_add_extra_outputs(pwmpio)