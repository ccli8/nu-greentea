#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore-tests-nvstore-functionality\
"

#mbed test -m NUMAKER_PFM_M453 -t ARM -n $TEST_LIST > m453_arm_flash.log
mbed test -m NUMAKER_PFM_M453 -t ARMC6 -n $TEST_LIST > m453_armc6_flash.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -n $TEST_LIST > m453_gcc_arm_flash.log
mbed test -m NUMAKER_PFM_M453 -t IAR -n $TEST_LIST > m453_iar_flash.log
