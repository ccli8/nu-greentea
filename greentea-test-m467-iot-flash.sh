#!/bin/sh

TEST_LIST="\
mbed-os-drivers-device_key-tests*,\
mbed-os-drivers-tests-tests-mbed_drivers-flashiap*,\
mbed-os-hal-tests-tests-mbed_hal-flash*,\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-device_key*,\
mbed-os-features-storage-tests-kvstore*,\
mbed-os-storage*\
"

mbed test -m NUMAKER_IOT_M467 -t ARMC6 -n $TEST_LIST > m467_iot_armc6_flash.log
mbed test -m NUMAKER_IOT_M467 -t GCC_ARM -n $TEST_LIST > m467_iot_gcc_arm_flash.log
mbed test -m NUMAKER_IOT_M467 -t IAR -n $TEST_LIST > m467_iot_iar_flash.log
