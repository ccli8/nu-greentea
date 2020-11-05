#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_IOT_M487 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > m487_iot_armc6_usbdevice.log
mbed test -m NUMAKER_IOT_M487 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > m487_iot_gcc_arm_usbdevice.log
mbed test -m NUMAKER_IOT_M487 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > m487_iot_iar_usbdevice.log
