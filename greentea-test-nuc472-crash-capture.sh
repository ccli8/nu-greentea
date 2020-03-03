#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_platform-crash_reporting\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 -n $TEST_LIST > nuc472_armc6_crash-capture.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -n $TEST_LIST > nuc472_gcc_arm_crash-capture.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR -n $TEST_LIST > nuc472_iar_crash-capture.log
