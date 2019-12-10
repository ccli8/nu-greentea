#!/bin/sh

TEST_LIST="\
mbed-os-features-device_key*,\
mbed-os-features-frameworks-utest*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-tests*,\
mbed-os-tests-events*,\
mbed-os-tests-integration*,\
mbed-os-tests-mbed-crypto*,\
mbed-os-tests-mbed_drivers*,\
mbed-os-tests-mbed_functional*,\
mbed-os-tests-mbed_hal*,\
mbed-os-tests-mbed_platform*,\
mbed-os-tests-mbedmicro-mbed*,\
mbed-os-tests-mbedmicro-rtos-mbed*,\
mbed-os-tests-mbedtls*,\
mbed-os-tests-psa*\
"

#mbed test -m NUMAKER_PFM_NANO130 -t ARM -n $TEST_LIST > nano130_arm.log
mbed test -m NUMAKER_PFM_NANO130 -t ARMC6 -n $TEST_LIST > nano130_armc6.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM -n $TEST_LIST > nano130_gcc_arm.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR -n $TEST_LIST > nano130_iar.log
