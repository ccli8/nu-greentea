#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore-tests-nvstore-functionality\
"

mbed test -m NUMAKER_PFM_M2351 -t ARM -n $TEST_LIST > m2351_arm_flash.log
mbed test -m NUMAKER_PFM_M2351 -t ARMC6 -n $TEST_LIST > m2351_armc6_flash.log
mbed test -m NUMAKER_PFM_M2351 -t GCC_ARM -n $TEST_LIST > m2351_gcc_arm_flash.log
mbed test -m NUMAKER_PFM_M2351 -t IAR -n $TEST_LIST > m2351_iar_flash.log