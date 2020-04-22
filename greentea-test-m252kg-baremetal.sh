#!/bin/sh

mbed test -m NUMAKER_M252KG -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > m252kg_armc6_baremetal.log
mbed test -m NUMAKER_M252KG -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > m252kg_gcc_arm_baremetal.log
mbed test -m NUMAKER_M252KG -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > m252kg_iar_baremetal.log
