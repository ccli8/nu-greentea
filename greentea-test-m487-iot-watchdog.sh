#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-reset_reason*,\
mbed-os-tests-mbed_drivers-watchdog*,\
mbed-os-tests-mbed_hal-reset_reason*,\
mbed-os-tests-mbed_hal-watchdog*\
"

mbed test -m NUMAKER_IOT_M487 -t ARMC6 -n $TEST_LIST > m487_iot_armc6_watchdog.log
mbed test -m NUMAKER_IOT_M487 -t GCC_ARM -n $TEST_LIST > m487_iot_gcc_arm_watchdog.log
mbed test -m NUMAKER_IOT_M487 -t IAR -n $TEST_LIST > m487_iot_iar_watchdog.log
