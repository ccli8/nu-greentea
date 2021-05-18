#!/bin/sh

TEST_LIST="\
mbed-os-drivers-tests-tests-mbed_drivers-sleep*,\
mbed-os-drivers-tests-tests-mbed_drivers-ti*,\
mbed-os-drivers-tests-tests-mbed_drivers-lp*,\
mbed-os-drivers-tests-tests-mbed_drivers-us*,\
mbed-os-drivers-tests-tests-mbed_drivers-rtc*,\
mbed-os-events-tests-tests-events-timing,\
mbed-os-hal-tests-tests-mbed_hal-sleep*,\
mbed-os-hal-tests-tests-mbed_hal-ti*,\
mbed-os-hal-tests-tests-mbed_hal-lp*,\
mbed-os-hal-tests-tests-mbed_hal-us*,\
mbed-os-hal-tests-tests-mbed_hal-rtc*,\
mbed-os-hal-tests-tests-mbed_hal-common_ticker*,\
mbed-os-platform-tests-tests-mbed_platform-wait_ns,\
mbed-os-rtos-tests-tests-mbedmicro-rtos-mbed-basic,\
mbed-os-rtos-tests-tests-mbedmicro-rtos-mbed-kernel_tick_count,\
mbed-os-tests-events-timing,\
mbed-os-tests-mbed_drivers-sleep*,\
mbed-os-tests-mbed_drivers-ti*,\
mbed-os-tests-mbed_drivers-lp*,\
mbed-os-tests-mbed_drivers-us*,\
mbed-os-tests-mbed_drivers-rtc*,\
mbed-os-tests-mbed_hal-sleep*,\
mbed-os-tests-mbed_hal-ti*,\
mbed-os-tests-mbed_hal-lp*,\
mbed-os-tests-mbed_hal-us*,\
mbed-os-tests-mbed_hal-rtc*,\
mbed-os-tests-mbed_hal-common_ticker*,\
mbed-os-tests-mbed_platform-wait_ns,\
mbed-os-tests-mbedmicro-rtos-mbed-basic,\
mbed-os-tests-mbedmicro-rtos-mbed-kernel_tick_count,\
mbed-os-drivers-tests-tests-mbed_drivers-reset_reason*,\
mbed-os-drivers-tests-tests-mbed_drivers-watchdog*,\
mbed-os-hal-tests-tests-mbed_hal-reset_reason*,\
mbed-os-hal-tests-tests-mbed_hal-watchdog*,\
mbed-os-tests-mbed_drivers-reset_reason*,\
mbed-os-tests-mbed_drivers-watchdog*,\
mbed-os-tests-mbed_hal-reset_reason*,\
mbed-os-tests-mbed_hal-watchdog*\
"

mbed test -m NUMAKER_IOT_M487 -t ARMC6 --app-config mbed_app_no_hxt_lxt.json -n $TEST_LIST --compile > m487_iot_armc6_no-hxt-lxt_0.log
mbed test -m NUMAKER_IOT_M487 -t ARMC6 --app-config mbed_app_no_hxt_lxt.json -n $TEST_LIST --run -v > m487_iot_armc6_no-hxt-lxt.log

#mbed test -m NUMAKER_IOT_M487 -t GCC_ARM --app-config mbed_app_no_hxt_lxt.json -n $TEST_LIST --compile > m487_iot_gcc_arm_no-hxt-lxt_0.log
#mbed test -m NUMAKER_IOT_M487 -t GCC_ARM --app-config mbed_app_no_hxt_lxt.json -n $TEST_LIST --run -v > m487_iot_gcc_arm_no-hxt-lxt.log

#mbed test -m NUMAKER_IOT_M487 -t IAR --app-config mbed_app_no_hxt_lxt.json -n $TEST_LIST --compile > m487_iot_iar_no-hxt-lxt_0.log
#mbed test -m NUMAKER_IOT_M487 -t IAR --app-config mbed_app_no_hxt_lxt.json -n $TEST_LIST --run -v > m487_iot_iar_no-hxt-lxt.log

