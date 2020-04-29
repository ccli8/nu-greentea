#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-device_key*,\
mbed-os-features-storage-tests-kvstore*\
"

mbed test -m NU_PFM_M2351_NPSA_NS -t ARMC6 -n $TEST_LIST > m2351-npsa-ns_armc6_flash.log
mbed test -m NU_PFM_M2351_NPSA_NS -t GCC_ARM -n $TEST_LIST > m2351-npsa-ns_gcc_arm_flash.log
mbed test -m NU_PFM_M2351_NPSA_NS -t IAR -n $TEST_LIST > m2351-npsa-ns_iar_flash.log
