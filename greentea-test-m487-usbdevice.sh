#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_PFM_M487 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > m487_armc6_usbdevice.log
mbed test -m NUMAKER_PFM_M487 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > m487_gcc_arm_usbdevice.log
mbed test -m NUMAKER_PFM_M487 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > m487_iar_usbdevice.log