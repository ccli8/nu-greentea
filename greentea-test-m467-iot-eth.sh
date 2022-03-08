#!/bin/sh

TEST_LIST="\
mbed-os-connectivity-netsocket-tests-tests-network-emac\
"

mbed test -m NUMAKER_IOT_M467 -t ARMC6 --app-config mbed_app_eth.json -n $TEST_LIST > m467_iot_armc6_eth.log
mbed test -m NUMAKER_IOT_M467 -t GCC_ARM --app-config mbed_app_eth.json -n $TEST_LIST > m467_iot_gcc_arm_eth.log
mbed test -m NUMAKER_IOT_M467 -t IAR --app-config mbed_app_eth.json -n $TEST_LIST > m467_iot_iar_eth.log
