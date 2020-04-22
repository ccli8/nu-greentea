#!/bin/sh

mbed test -m NUMAKER_IOT_M263A -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > m263a_armc6_baremetal.log
mbed test -m NUMAKER_IOT_M263A -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > m263a_gcc_arm_baremetal.log
mbed test -m NUMAKER_IOT_M263A -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > m263a_iar_baremetal.log
