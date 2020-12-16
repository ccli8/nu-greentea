#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*,\
mbed-os-tests-mbed_timing_fpga_ci_test_shield*,\
mbed-os-hal-tests-tests-mbed_hal_fpga_ci_test_shield*\
"

mbed test -m NU_M2354_NS -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2354-psa-ns_armc6_fpga-ci.log
mbed test -m NU_M2354_NS -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2354-psa-ns_gcc_arm_fpga-ci.log
mbed test -m NU_M2354_NS -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2354-psa-ns_iar_fpga-ci.log
