#!/bin/sh

TEST_LIST="\
mbed-os-tests-events-timing,\
mbed-os-tests-mbed_drivers-sleep*,\
mbed-os-tests-mbed_drivers-ti*,\
mbed-os-tests-mbed_drivers-lp*,\
mbed-os-tests-mbed_drivers-us*,\
mbed-os-tests-mbed_drivers-rtc*,\
mbed-os-tests-mbed_hal-sleep*,\
mbed-os-tests-mbed_hal-ti*,\
mbed-os-tests-mbed_hal-lp*,\
mbed-os-tests-mbed_hal-us*,\
mbed-os-tests-mbed_hal-rtc*,\
mbed-os-tests-mbed_hal-common_ticker*,\
mbed-os-tests-mbed_platform-wait_ns,\
mbed-os-tests-mbedmicro-rtos-mbed-basic,\
mbed-os-tests-mbedmicro-rtos-mbed-kernel_tick_count\
"

mbed test -m NUMAKER_PFM_NANO130 -t ARM -n $TEST_LIST > nano130_arm_timer.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM -n $TEST_LIST > nano130_gcc_arm_timer.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR -n $TEST_LIST > nano130_iar_timer.log
