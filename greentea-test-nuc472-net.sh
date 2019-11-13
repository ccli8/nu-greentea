#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-trng,\
mbed-os-tests-mbedtls*,\
mbed-os-tests-net*\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 --app-config mbed_app_net.json -n $TEST_LIST > nuc472_armc6_net.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM --app-config mbed_app_net.json -n $TEST_LIST > nuc472_gcc_arm_net.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR --app-config mbed_app_net.json -n $TEST_LIST > nuc472_iar_net.log
