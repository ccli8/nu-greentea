#!/bin/sh

TEST_LIST="\
mbed-os-connectivity-mbedtls-tests*,\
mbed-os-connectivity-netsocket-tests*,\
mbed-os-hal-tests-tests-mbed_hal-trng,\
mbed-os-tests-mbed_hal-trng,\
mbed-os-tests-mbedtls*,\
mbed-os-tests-net*,\
mbed-os-tests-integration*\
"

mbed test -m NUMAKER_IOT_M467 -t ARMC6 --app-config mbed_app_net.json -n $TEST_LIST > m467_iot_armc6_net.log
mbed test -m NUMAKER_IOT_M467 -t GCC_ARM --app-config mbed_app_net.json -n $TEST_LIST > m467_iot_gcc_arm_net.log
mbed test -m NUMAKER_IOT_M467 -t IAR --app-config mbed_app_net.json -n $TEST_LIST > m467_iot_iar_net.log
