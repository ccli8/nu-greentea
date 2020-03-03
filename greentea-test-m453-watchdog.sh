#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-reset_reason*,\
mbed-os-tests-mbed_drivers-watchdog*,\
mbed-os-tests-mbed_hal-reset_reason*,\
mbed-os-tests-mbed_hal-watchdog*\
"

mbed test -m NUMAKER_PFM_M453 -t ARMC6 -n $TEST_LIST > m453_armc6_watchdog.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -n $TEST_LIST > m453_gcc_arm_watchdog.log
mbed test -m NUMAKER_PFM_M453 -t IAR -n $TEST_LIST > m453_iar_watchdog.log
