#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*\
"

#mbed test -m NUMAKER_PFM_M2351 -t ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351_arm_fpga-ci.log
mbed test -m NUMAKER_PFM_M2351 -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351_armc6_fpga-ci.log
mbed test -m NUMAKER_PFM_M2351 -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351_gcc_arm_fpga-ci.log
#mbed test -m NUMAKER_PFM_M2351 -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351_iar_fpga-ci.log