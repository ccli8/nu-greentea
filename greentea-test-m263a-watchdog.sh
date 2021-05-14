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

mbed test -m NUMAKER_IOT_M263A -t ARMC6 -n $TEST_LIST > m263a_armc6_watchdog.log
mbed test -m NUMAKER_IOT_M263A -t GCC_ARM -n $TEST_LIST > m263a_gcc_arm_watchdog.log
mbed test -m NUMAKER_IOT_M263A -t IAR -n $TEST_LIST > m263a_iar_watchdog.log
