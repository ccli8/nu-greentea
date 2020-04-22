#!/bin/sh

mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > nuc472_armc6_baremetal.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > nuc472_gcc_arm_baremetal.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > nuc472_iar_baremetal.log
