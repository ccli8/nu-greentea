#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-stack_size_unification,\
mbed-os-tests-mbedmicro-rtos-mbed-heap_and_stack\
"

mbed test -m NUMAKER_PFM_M453 -t ARMC6 -n $TEST_LIST > m453_armc6_boot-stack.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM -n $TEST_LIST > m453_gcc_arm_boot-stack.log
mbed test -m NUMAKER_PFM_M453 -t IAR -n $TEST_LIST > m453_iar_boot-stack.log
