#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal_fpga_ci_test_shield*,\
mbed-os-tests-mbed_timing_fpga_ci_test_shield*,\
mbed-os-hal-tests-tests-mbed_hal_fpga_ci_test_shield*\
"

mbed test -m NU_PFM_M2351_NPSA_NS -t ARMC6 --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351-npsa-ns_armc6_fpga-ci.log
mbed test -m NU_PFM_M2351_NPSA_NS -t GCC_ARM --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351-npsa-ns_gcc_arm_fpga-ci.log
mbed test -m NU_PFM_M2351_NPSA_NS -t IAR --app-config mbed_app_fpga-ci.json -n $TEST_LIST > m2351-npsa-ns_iar_fpga-ci.log
