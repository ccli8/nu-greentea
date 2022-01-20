#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_IOT_M252 -t ARM -n $TEST_LIST --compile > m252-iot_armc6_pin-name_0.log
mbed test -m NUMAKER_IOT_M252 -t ARM -n $TEST_LIST --run -v > m252-iot_armc6_pin-name.log

mbed test -m NUMAKER_IOT_M252 -t GCC_ARM -n $TEST_LIST --compile > m252-iot_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_IOT_M252 -t GCC_ARM -n $TEST_LIST --run -v > m252-iot_gcc_arm_pin-name.log

mbed test -m NUMAKER_IOT_M252 -t IAR -n $TEST_LIST --compile > m252-iot_iar_pin-name_0.log
mbed test -m NUMAKER_IOT_M252 -t IAR -n $TEST_LIST --run -v > m252-iot_iar_pin-name.log
