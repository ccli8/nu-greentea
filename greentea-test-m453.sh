#!/bin/sh

TEST_LIST="\
mbed-os-drivers-device_key-tests*,\
mbed-os-drivers-tests*,\
mbed-os-events-tests*,\
mbed-os-features-device_key*,\
mbed-os-features-frameworks-utest*,\
mbed-os-features-storage-nvstore*,\
mbed-os-features-storage-tests*,\
mbed-os-features-tests*,\
mbed-os-hal-tests*,\
mbed-os-platform-tests*,\
mbed-os-rtos-tests*,\
mbed-os-storage*,\
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
mbed-os-tests-psa*,\
mbed-os-components-target_psa*
"

mbed test -m NUMAKER_PFM_M453 -t ARMC6 -n $TEST_LIST > m453_armc6.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -n $TEST_LIST > m453_gcc_arm.log
mbed test -m NUMAKER_PFM_M453 -t IAR -n $TEST_LIST > m453_iar.log
