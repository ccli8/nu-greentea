#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_IOT_M252 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > m252-iot_armc6_usbdevice.log
mbed test -m NUMAKER_IOT_M252 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > m252-iot_gcc_arm_usbdevice.log
mbed test -m NUMAKER_IOT_M252 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > m252-iot_iar_usbdevice.log