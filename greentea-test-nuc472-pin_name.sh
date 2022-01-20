#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARM -n $TEST_LIST --compile > nuc472_armc6_pin-name_0.log
mbed test -m NUMAKER_PFM_NUC472 -t ARM -n $TEST_LIST --run -v > nuc472_armc6_pin-name.log

mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -n $TEST_LIST --compile > nuc472_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -n $TEST_LIST --run -v > nuc472_gcc_arm_pin-name.log

mbed test -m NUMAKER_PFM_NUC472 -t IAR -n $TEST_LIST --compile > nuc472_iar_pin-name_0.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR -n $TEST_LIST --run -v > nuc472_iar_pin-name.log
