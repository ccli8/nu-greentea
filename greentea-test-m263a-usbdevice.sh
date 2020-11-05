#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_IOT_M263A -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > m263a_armc6_usbdevice.log
mbed test -m NUMAKER_IOT_M263A -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > m263a_gcc_arm_usbdevice.log
mbed test -m NUMAKER_IOT_M263A -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > m263a_iar_usbdevice.log
