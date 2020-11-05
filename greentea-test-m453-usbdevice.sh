#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_PFM_M453 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > m453_armc6_usbdevice.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > m453_gcc_arm_usbdevice.log
mbed test -m NUMAKER_PFM_M453 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > m453_iar_usbdevice.log
