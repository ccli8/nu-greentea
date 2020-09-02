#!/bin/sh

TEST_LIST="\
mbed-os-drivers-tests-tests-mbed_drivers-reset_reason*,\
mbed-os-drivers-tests-tests-mbed_drivers-watchdog*,\
mbed-os-hal-tests-tests-mbed_hal-reset_reason*,\
mbed-os-hal-tests-tests-mbed_hal-watchdog*,\
mbed-os-tests-mbed_drivers-reset_reason*,\
mbed-os-tests-mbed_drivers-watchdog*,\
mbed-os-tests-mbed_hal-reset_reason*,\
mbed-os-tests-mbed_hal-watchdog*\
"

mbed test -m NUMAKER_PFM_NANO130 -t ARMC6 -n $TEST_LIST > nano130_armc6_watchdog.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM -n $TEST_LIST > nano130_gcc_arm_watchdog.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR -n $TEST_LIST > nano130_iar_watchdog.log
