#!/bin/sh

mbed test -m NUMAKER_IOT_M252 -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > m252-iot_armc6_baremetal.log
mbed test -m NUMAKER_IOT_M252 -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > m252-iot_gcc_arm_baremetal.log
mbed test -m NUMAKER_IOT_M252 -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > m252-iot_iar_baremetal.log
