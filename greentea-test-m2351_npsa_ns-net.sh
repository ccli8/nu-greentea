#!/bin/sh

TEST_LIST="\
mbed-os-connectivity-mbedtls-tests*,\
mbed-os-connectivity-netsocket-tests*,\
mbed-os-hal-tests-tests-mbed_hal-trng,\
mbed-os-tests-mbed_hal-trng,\
mbed-os-tests-mbedtls*,\
mbed-os-tests-net*\
"

mbed test -m NU_PFM_M2351_NPSA_NS -t ARMC6 --app-config mbed_app_net.json -n $TEST_LIST > m2351-npsa-ns_armc6_net.log
mbed test -m NU_PFM_M2351_NPSA_NS -t GCC_ARM --app-config mbed_app_net.json -n $TEST_LIST > m2351-npsa-ns_gcc_arm_net.log
mbed test -m NU_PFM_M2351_NPSA_NS -t IAR --app-config mbed_app_net.json -n $TEST_LIST > m2351-npsa-ns_iar_net.log
