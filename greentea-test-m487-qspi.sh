#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-qspi*\
"

mbed test -m NUMAKER_PFM_M487 -t ARMC6 -n $TEST_LIST > m487_armc6_qspi.log
mbed test -m NUMAKER_PFM_M487 -t GCC_ARM -n $TEST_LIST > m487_gcc_arm_qspi.log
mbed test -m NUMAKER_PFM_M487 -t IAR -n $TEST_LIST > m487_iar_qspi.log