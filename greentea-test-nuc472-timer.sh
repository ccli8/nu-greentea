#!/bin/sh

TEST_LIST="\
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
mbed-os-tests-mbed_platform-wait_ns\
"

#mbed test -m NUMAKER_PFM_NUC472 -t ARM -n $TEST_LIST > nuc472_arm_timer.log
mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 -n $TEST_LIST > nuc472_armc6_timer.log
#mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -n $TEST_LIST > nuc472_gcc_arm_timer.log
#mbed test -m NUMAKER_PFM_NUC472 -t IAR -n $TEST_LIST > nuc472_iar_timer.log
