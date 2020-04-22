#!/bin/sh

mbed test -m NUMAKER_PFM_M487 -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > m487_armc6_baremetal.log
mbed test -m NUMAKER_PFM_M487 -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > m487_gcc_arm_baremetal.log
mbed test -m NUMAKER_PFM_M487 -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > m487_iar_baremetal.log
