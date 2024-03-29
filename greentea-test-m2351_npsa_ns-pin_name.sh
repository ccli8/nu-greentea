#!/bin/sh

TEST_LIST="\
*pin_names*\
"

mbed test -m NU_PFM_M2351_NPSA_NS -t ARM -n $TEST_LIST --compile > m2351-npsa-ns_armc6_pin-name_0.log
mbed test -m NU_PFM_M2351_NPSA_NS -t ARM -n $TEST_LIST --run -v > m2351-npsa-ns_armc6_pin-name.log

mbed test -m NU_PFM_M2351_NPSA_NS -t GCC_ARM -n $TEST_LIST --compile > m2351-npsa-ns_gcc_arm_pin-name_0.log
mbed test -m NU_PFM_M2351_NPSA_NS -t GCC_ARM -n $TEST_LIST --run -v > m2351-npsa-ns_gcc_arm_pin-name.log

mbed test -m NU_PFM_M2351_NPSA_NS -t IAR -n $TEST_LIST --compile > m2351-npsa-ns_iar_pin-name_0.log
mbed test -m NU_PFM_M2351_NPSA_NS -t IAR -n $TEST_LIST --run -v > m2351-npsa-ns_iar_pin-name.log
