#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NUMAKER_PFM_NANO130 -t ARM --app-config mbed_app_pin-name.json -n $TEST_LIST --compile > nano130_armc6_pin-name_0.log
mbed test -m NUMAKER_PFM_NANO130 -t ARM --app-config mbed_app_pin-name.json -n $TEST_LIST --run -v > nano130_armc6_pin-name.log

mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM --app-config mbed_app_pin-name.json -n $TEST_LIST --compile > nano130_gcc_arm_pin-name_0.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM --app-config mbed_app_pin-name.json -n $TEST_LIST --run -v > nano130_gcc_arm_pin-name.log

mbed test -m NUMAKER_PFM_NANO130 -t IAR --app-config mbed_app_pin-name.json -n $TEST_LIST --compile > nano130_iar_pin-name_0.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR --app-config mbed_app_pin-name.json -n $TEST_LIST --run -v > nano130_iar_pin-name.log
