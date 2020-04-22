#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-trng,\
mbed-os-tests-mbedtls*,\
mbed-os-tests-net*\
"

mbed test -m NUMAKER_IOT_M487 -t ARMC6 --app-config mbed_app_net.json -n $TEST_LIST > m487-iot_armc6_net.log
mbed test -m NUMAKER_IOT_M487 -t GCC_ARM --app-config mbed_app_net.json -n $TEST_LIST > m487-iot_gcc_arm_net.log
mbed test -m NUMAKER_IOT_M487 -t IAR --app-config mbed_app_net.json -n $TEST_LIST > m487-iot_iar_net.log