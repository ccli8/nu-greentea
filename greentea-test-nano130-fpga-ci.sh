#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*\
"

#mbed test -m NUMAKER_PFM_NANO130 -t ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > nano130_arm_fpga-ci.log
mbed test -m NUMAKER_PFM_NANO130 -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > nano130_armc6_fpga-ci.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > nano130_gcc_arm_fpga-ci.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > nano130_iar_fpga-ci.log
