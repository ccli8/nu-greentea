#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_IOT_M467 -t ARM -n $TEST_LIST --compile > m467_iot_armc6_pin-name_0.log
mbed test -m NUMAKER_IOT_M467 -t ARM -n $TEST_LIST --run -v > m467_iot_armc6_pin-name.log

mbed test -m NUMAKER_IOT_M467 -t GCC_ARM -n $TEST_LIST --compile > m467_iot_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_IOT_M467 -t GCC_ARM -n $TEST_LIST --run -v > m467_iot_gcc_arm_pin-name.log

mbed test -m NUMAKER_IOT_M467 -t IAR -n $TEST_LIST --compile > m467_iot_iar_pin-name_0.log
mbed test -m NUMAKER_IOT_M467 -t IAR -n $TEST_LIST --run -v > m467_iot_iar_pin-name.log
