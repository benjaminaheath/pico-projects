# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.18

# compile ASM with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe
# compile C with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-gcc.exe
# compile CXX with C:/Program Files (x86)/GNU Arm Embedded Toolchain/10 2020-q4-major/bin/arm-none-eabi-g++.exe
ASM_DEFINES = -DPICO_BIT_OPS_PICO=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DIVIDER_HARDWARE=1 -DPICO_DOUBLE_PICO=1 -DPICO_FLOAT_PICO=1 -DPICO_INT64_OPS_PICO=1 -DPICO_MEM_OPS_PICO=1 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PRINTF_PICO=1 -DPICO_STDIO_UART=1 -DPICO_TARGET_NAME=\"drive\" -DPICO_USE_BLOCKED_RAM=0

ASM_INCLUDES = -ID:\RPI\pico-sdk\src\common\pico_stdlib\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\RPI\pico-sdk\src\common\pico_base\include -ID:\RPI\pico-projects\build\generated\pico_base -ID:\RPI\pico-sdk\src\boards\include -ID:\RPI\pico-sdk\src\rp2_common\pico_platform\include -ID:\RPI\pico-sdk\src\rp2040\hardware_regs\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_base\include -ID:\RPI\pico-sdk\src\rp2040\hardware_structs\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_claim\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_sync\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_uart\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_divider\include -ID:\RPI\pico-sdk\src\common\pico_time\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_timer\include -ID:\RPI\pico-sdk\src\common\pico_sync\include -ID:\RPI\pico-sdk\src\common\pico_util\include -ID:\RPI\pico-sdk\src\rp2_common\pico_runtime\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_resets\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_pll\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_irq\include -ID:\RPI\pico-sdk\src\rp2_common\pico_printf\include -ID:\RPI\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\RPI\pico-sdk\src\common\pico_bit_ops\include -ID:\RPI\pico-sdk\src\common\pico_divider\include -ID:\RPI\pico-sdk\src\rp2_common\pico_double\include -ID:\RPI\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\RPI\pico-sdk\src\rp2_common\pico_float\include -ID:\RPI\pico-sdk\src\common\pico_binary_info\include -ID:\RPI\pico-sdk\src\rp2_common\pico_stdio\include -ID:\RPI\pico-sdk\src\rp2_common\pico_stdio_uart\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_pwm\include

ASM_FLAGS = -march=armv6-m -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections

C_DEFINES = -DPICO_BIT_OPS_PICO=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DIVIDER_HARDWARE=1 -DPICO_DOUBLE_PICO=1 -DPICO_FLOAT_PICO=1 -DPICO_INT64_OPS_PICO=1 -DPICO_MEM_OPS_PICO=1 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PRINTF_PICO=1 -DPICO_STDIO_UART=1 -DPICO_TARGET_NAME=\"drive\" -DPICO_USE_BLOCKED_RAM=0

C_INCLUDES = -ID:\RPI\pico-sdk\src\common\pico_stdlib\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\RPI\pico-sdk\src\common\pico_base\include -ID:\RPI\pico-projects\build\generated\pico_base -ID:\RPI\pico-sdk\src\boards\include -ID:\RPI\pico-sdk\src\rp2_common\pico_platform\include -ID:\RPI\pico-sdk\src\rp2040\hardware_regs\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_base\include -ID:\RPI\pico-sdk\src\rp2040\hardware_structs\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_claim\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_sync\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_uart\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_divider\include -ID:\RPI\pico-sdk\src\common\pico_time\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_timer\include -ID:\RPI\pico-sdk\src\common\pico_sync\include -ID:\RPI\pico-sdk\src\common\pico_util\include -ID:\RPI\pico-sdk\src\rp2_common\pico_runtime\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_resets\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_pll\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_irq\include -ID:\RPI\pico-sdk\src\rp2_common\pico_printf\include -ID:\RPI\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\RPI\pico-sdk\src\common\pico_bit_ops\include -ID:\RPI\pico-sdk\src\common\pico_divider\include -ID:\RPI\pico-sdk\src\rp2_common\pico_double\include -ID:\RPI\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\RPI\pico-sdk\src\rp2_common\pico_float\include -ID:\RPI\pico-sdk\src\common\pico_binary_info\include -ID:\RPI\pico-sdk\src\rp2_common\pico_stdio\include -ID:\RPI\pico-sdk\src\rp2_common\pico_stdio_uart\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_pwm\include

C_FLAGS = -march=armv6-m -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -std=gnu11

CXX_DEFINES = -DPICO_BIT_OPS_PICO=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_DIVIDER_HARDWARE=1 -DPICO_DOUBLE_PICO=1 -DPICO_FLOAT_PICO=1 -DPICO_INT64_OPS_PICO=1 -DPICO_MEM_OPS_PICO=1 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_PRINTF_PICO=1 -DPICO_STDIO_UART=1 -DPICO_TARGET_NAME=\"drive\" -DPICO_USE_BLOCKED_RAM=0

CXX_INCLUDES = -ID:\RPI\pico-sdk\src\common\pico_stdlib\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_gpio\include -ID:\RPI\pico-sdk\src\common\pico_base\include -ID:\RPI\pico-projects\build\generated\pico_base -ID:\RPI\pico-sdk\src\boards\include -ID:\RPI\pico-sdk\src\rp2_common\pico_platform\include -ID:\RPI\pico-sdk\src\rp2040\hardware_regs\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_base\include -ID:\RPI\pico-sdk\src\rp2040\hardware_structs\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_claim\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_sync\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_uart\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_divider\include -ID:\RPI\pico-sdk\src\common\pico_time\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_timer\include -ID:\RPI\pico-sdk\src\common\pico_sync\include -ID:\RPI\pico-sdk\src\common\pico_util\include -ID:\RPI\pico-sdk\src\rp2_common\pico_runtime\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_clocks\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_resets\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_watchdog\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_xosc\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_pll\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_vreg\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_irq\include -ID:\RPI\pico-sdk\src\rp2_common\pico_printf\include -ID:\RPI\pico-sdk\src\rp2_common\pico_bootrom\include -ID:\RPI\pico-sdk\src\common\pico_bit_ops\include -ID:\RPI\pico-sdk\src\common\pico_divider\include -ID:\RPI\pico-sdk\src\rp2_common\pico_double\include -ID:\RPI\pico-sdk\src\rp2_common\pico_int64_ops\include -ID:\RPI\pico-sdk\src\rp2_common\pico_float\include -ID:\RPI\pico-sdk\src\common\pico_binary_info\include -ID:\RPI\pico-sdk\src\rp2_common\pico_stdio\include -ID:\RPI\pico-sdk\src\rp2_common\pico_stdio_uart\include -ID:\RPI\pico-sdk\src\rp2_common\hardware_pwm\include

CXX_FLAGS = -march=armv6-m -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit -std=gnu++17

