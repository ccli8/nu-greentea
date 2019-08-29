#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-stack_size_unification,\
mbed-os-tests-mbedmicro-rtos-mbed-heap_and_stack\
"

mbed test -m NUMAKER_PFM_NUC472 -t ARM -n $TEST_LIST > nuc472_arm_boot-stack.log
mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 -n $TEST_LIST > nuc472_armc6_boot-stack.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM -n $TEST_LIST > nuc472_gcc_arm_boot-stack.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR -n $TEST_LIST > nuc472_iar_boot-stack.log
