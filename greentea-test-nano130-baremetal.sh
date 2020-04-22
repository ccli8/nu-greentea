#!/bin/sh

mbed test -m NUMAKER_PFM_NANO130 -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > nano130_armc6_baremetal.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > nano130_gcc_arm_baremetal.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > nano130_iar_baremetal.log
