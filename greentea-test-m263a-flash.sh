#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-device_key*,\
mbed-os-features-storage-tests-kvstore*\
"

mbed test -m NUMAKER_IOT_M263A -t ARMC6 -n $TEST_LIST > m263a_armc6_flash.log
mbed test -m NUMAKER_IOT_M263A -t GCC_ARM -n $TEST_LIST > m263a_gcc_arm_flash.log
mbed test -m NUMAKER_IOT_M263A -t IAR -n $TEST_LIST > m263a_iar_flash.log
