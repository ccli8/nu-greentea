#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-device_key*\
"

mbed test -m NU_PFM_M2351_NPSA_S -t ARMC6 -n $TEST_LIST > m2351-npsa-s_armc6_flash.log
mbed test -m NU_PFM_M2351_NPSA_S -t GCC_ARM -n $TEST_LIST > m2351-npsa-s_gcc_arm_flash.log
mbed test -m NU_PFM_M2351_NPSA_S -t IAR -n $TEST_LIST > m2351-npsa-s_iar_flash.log
