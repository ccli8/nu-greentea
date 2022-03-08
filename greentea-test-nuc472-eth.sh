#!/bin/sh

TEST_LIST="\
mbed-os-connectivity-netsocket-tests-tests-network-emac\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 --app-config mbed_app_eth.json -n $TEST_LIST > nuc472_armc6_eth.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM --app-config mbed_app_eth.json -n $TEST_LIST > nuc472_gcc_arm_eth.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR --app-config mbed_app_eth.json -n $TEST_LIST > nuc472_iar_eth.log
