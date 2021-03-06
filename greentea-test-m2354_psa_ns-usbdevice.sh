#!/bin/sh

TEST_LIST="\
mbed-os-*-tests-usb_device-*\
"

mbed test -m NU_M2354 -t ARMC6 -DUSB_DEVICE_TESTS -n $TEST_LIST > m2354-psa-ns_armc6_usbdevice.log
mbed test -m NU_M2354 -t GCC_ARM -DUSB_DEVICE_TESTS -n $TEST_LIST > m2354-psa-ns_gcc_arm_usbdevice.log
mbed test -m NU_M2354 -t IAR -DUSB_DEVICE_TESTS -n $TEST_LIST > m2354-psa-ns_iar_usbdevice.log
