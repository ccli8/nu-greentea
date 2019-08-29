#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*\
"

#mbed test -m NUMAKER_M252KG -t ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252kg_arm_fpga-ci.log
mbed test -m NUMAKER_M252KG -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252kg_armc6_fpga-ci.log
mbed test -m NUMAKER_M252KG -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252kg_gcc_arm_fpga-ci.log
mbed test -m NUMAKER_M252KG -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m252kg_iar_fpga-ci.log
