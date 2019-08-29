#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-stack_size_unification,\
mbed-os-tests-mbedmicro-rtos-mbed-heap_and_stack\
"

mbed test -m NUMAKER_PFM_NANO130 -t ARM -n $TEST_LIST > nano130_arm_boot-stack.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM -n $TEST_LIST > nano130_gcc_arm_boot-stack.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR -n $TEST_LIST > nano130_iar_boot-stack.log
