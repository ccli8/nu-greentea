#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*,\
mbed-os-tests-mbed_timing_fpga_ci_test_shield*,\
mbed-os-hal-tests-tests-mbed_hal_fpga_ci_test_shield*\
"

mbed test -m NUMAKER_IOT_M487 -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m487_iot_armc6_fpga-ci.log
mbed test -m NUMAKER_IOT_M487 -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m487_iot_gcc_arm_fpga-ci.log
mbed test -m NUMAKER_IOT_M487 -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m487_iot_iar_fpga-ci.log
