#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_PFM_NANO130 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > nano130_arm_usbdevice.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > nano130_gcc_arm_usbdevice.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > nano130_iar_usbdevice.log
