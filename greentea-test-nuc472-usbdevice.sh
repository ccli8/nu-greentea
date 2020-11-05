#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > nuc472_armc6_usbdevice.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > nuc472_gcc_arm_usbdevice.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > nuc472_iar_usbdevice.log
