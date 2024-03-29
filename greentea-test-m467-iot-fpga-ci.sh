#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*,\
mbed-os-tests-mbed_timing_fpga_ci_test_shield*,\
mbed-os-hal-tests-tests-mbed_hal_fpga_ci_test_shield*\
"

mbed test -m NUMAKER_IOT_M467 -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m467_iot_armc6_fpga-ci.log
mbed test -m NUMAKER_IOT_M467 -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m467_iot_gcc_arm_fpga-ci.log
mbed test -m NUMAKER_IOT_M467 -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m467_iot_iar_fpga-ci.log
