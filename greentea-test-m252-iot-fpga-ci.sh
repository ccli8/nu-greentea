#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*\
"

mbed test -m NUMAKER_IOT_M252 -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252-iot_armc6_fpga-ci.log
mbed test -m NUMAKER_IOT_M252 -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252-iot_gcc_arm_fpga-ci.log
mbed test -m NUMAKER_IOT_M252 -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252-iot_iar_fpga-ci.log
