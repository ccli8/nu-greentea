#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-reset_reason*,\
mbed-os-tests-mbed_drivers-watchdog*,\
mbed-os-tests-mbed_hal-reset_reason*,\
mbed-os-tests-mbed_hal-watchdog*\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 -n $TEST_LIST > nuc472_armc6_watchdog.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -n $TEST_LIST > nuc472_gcc_arm_watchdog.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR -n $TEST_LIST > nuc472_iar_watchdog.log
