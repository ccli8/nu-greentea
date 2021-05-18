#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NU_M2354 -t ARM -n $TEST_LIST --compile > m2354-psa-ns_armc6_pin-name_0.log
mbed test -m NU_M2354 -t ARM -n $TEST_LIST --run -v > m2354-psa-ns_armc6_pin-name.log

mbed test -m NU_M2354 -t GCC_ARM -n $TEST_LIST --compile > m2354-psa-ns_gcc_arm_pin-name_0.log
mbed test -m NU_M2354 -t GCC_ARM -n $TEST_LIST --run -v > m2354-psa-ns_gcc_arm_pin-name.log

mbed test -m NU_M2354 -t IAR -n $TEST_LIST --compile > m2354-psa-ns_iar_pin-name_0.log
mbed test -m NU_M2354 -t IAR -n $TEST_LIST --run -v > m2354-psa-ns_iar_pin-name.log
