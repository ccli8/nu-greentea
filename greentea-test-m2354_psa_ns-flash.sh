#!/bin/sh

TEST_LIST="\
mbed-os-drivers-device_key-tests*,\
mbed-os-drivers-tests-tests-mbed_drivers-flashiap*,\
mbed-os-hal-tests-tests-mbed_hal-flash*,\
mbed-os-tests-mbed_drivers-flashiap*,\
mbed-os-tests-mbed_hal-flash*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-device_key*,\
mbed-os-features-storage-tests-kvstore*,\
mbed-os-storage*\
"

mbed test -m NU_M2354_NS -t ARMC6 -n $TEST_LIST > m2354-psa-ns_armc6_flash.log
mbed test -m NU_M2354_NS -t GCC_ARM -n $TEST_LIST > m2354-psa-ns_gcc_arm_flash.log
mbed test -m NU_M2354_NS -t IAR -n $TEST_LIST > m2354-psa-ns_iar_flash.log
