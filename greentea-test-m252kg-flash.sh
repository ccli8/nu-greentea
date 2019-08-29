#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore-tests-nvstore-functionality\
"

#mbed test -m NUMAKER_M252KG -t ARM -n $TEST_LIST > m252kg_arm_flash.log
mbed test -m NUMAKER_M252KG -t ARMC6 -n $TEST_LIST > m252kg_armc6_flash.log
mbed test -m NUMAKER_M252KG -t GCC_ARM -n $TEST_LIST > m252kg_gcc_arm_flash.log
mbed test -m NUMAKER_M252KG -t IAR -n $TEST_LIST > m252kg_iar_flash.log
