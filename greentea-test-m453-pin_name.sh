#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_PFM_M453 -t ARM -n $TEST_LIST --compile > m453_armc6_pin-name_0.log
mbed test -m NUMAKER_PFM_M453 -t ARM -n $TEST_LIST --run -v > m453_armc6_pin-name.log

mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -n $TEST_LIST --compile > m453_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -n $TEST_LIST --run -v > m453_gcc_arm_pin-name.log

mbed test -m NUMAKER_PFM_M453 -t IAR -n $TEST_LIST --compile > m453_iar_pin-name_0.log
mbed test -m NUMAKER_PFM_M453 -t IAR -n $TEST_LIST --run -v > m453_iar_pin-name.log
