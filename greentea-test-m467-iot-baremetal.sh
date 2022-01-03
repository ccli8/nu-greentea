#!/bin/sh

mbed test -m NUMAKER_IOT_M467 -t ARMC6 --app-config mbed-os/TESTS/configs/baremetal.json > m467_iot_armc6_baremetal.log
mbed test -m NUMAKER_IOT_M467 -t GCC_ARM --app-config mbed-os/TESTS/configs/baremetal.json > m467_iot_gcc_arm_baremetal.log
mbed test -m NUMAKER_IOT_M467 -t IAR --app-config mbed-os/TESTS/configs/baremetal.json > m467_iot_iar_baremetal.log
