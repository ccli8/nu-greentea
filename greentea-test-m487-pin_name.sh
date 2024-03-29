#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_PFM_M487 -t ARM -n $TEST_LIST --compile > m487_armc6_pin-name_0.log
mbed test -m NUMAKER_PFM_M487 -t ARM -n $TEST_LIST --run -v > m487_armc6_pin-name.log

mbed test -m NUMAKER_PFM_M487 -t GCC_ARM -n $TEST_LIST --compile > m487_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_PFM_M487 -t GCC_ARM -n $TEST_LIST --run -v > m487_gcc_arm_pin-name.log

mbed test -m NUMAKER_PFM_M487 -t IAR -n $TEST_LIST --compile > m487_iar_pin-name_0.log
mbed test -m NUMAKER_PFM_M487 -t IAR -n $TEST_LIST --run -v > m487_iar_pin-name.log
