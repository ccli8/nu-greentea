#!/bin/sh

mbed test -m NUMAKER_PFM_M453 -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > m453_armc6_baremetal.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > m453_gcc_arm_baremetal.log
mbed test -m NUMAKER_PFM_M453 -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > m453_iar_baremetal.log
