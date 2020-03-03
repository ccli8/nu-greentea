#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*\
"

mbed test -m NUMAKER_PFM_M487 -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m487_armc6_fpga-ci.log
mbed test -m NUMAKER_PFM_M487 -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m487_gcc_arm_fpga-ci.log
mbed test -m NUMAKER_PFM_M487 -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m487_iar_fpga-ci.log
