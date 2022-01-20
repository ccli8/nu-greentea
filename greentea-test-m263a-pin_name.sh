#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_IOT_M263A -t ARM -n $TEST_LIST --compile > m263a_armc6_pin-name_0.log
mbed test -m NUMAKER_IOT_M263A -t ARM -n $TEST_LIST --run -v > m263a_armc6_pin-name.log

mbed test -m NUMAKER_IOT_M263A -t GCC_ARM -n $TEST_LIST --compile > m263a_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_IOT_M263A -t GCC_ARM -n $TEST_LIST --run -v > m263a_gcc_arm_pin-name.log

mbed test -m NUMAKER_IOT_M263A -t IAR -n $TEST_LIST --compile > m263a_iar_pin-name_0.log
mbed test -m NUMAKER_IOT_M263A -t IAR -n $TEST_LIST --run -v > m263a_iar_pin-name.log
