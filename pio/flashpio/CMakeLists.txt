add_executable(flashpio)

pico_generate_pio_header(flashpio ${CMAKE_CURRENT_LIST_DIR}/flashpio.pio)

target_sources(flashpio PRIVATE flashpio.c)

target_link_libraries(flashpio PRIVATE pico_stdlib hardware_pio)
pico_add_extra_outputs(flashpio)