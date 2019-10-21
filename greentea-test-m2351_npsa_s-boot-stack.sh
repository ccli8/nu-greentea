#!/bin/sh

TEST_LIST="\
mbed-os-tests-mbed_hal-stack_size_unification,\
mbed-os-tests-mbedmicro-rtos-mbed-heap_and_stack\
"

mbed test -m NU_PFM_M2351_NPSA_S -t ARMC6 -n $TEST_LIST > m2351-npsa-s_armc6_boot-stack.log
mbed test -m NU_PFM_M2351_NPSA_S -t GCC_ARM -n $TEST_LIST > m2351-npsa-s_gcc_arm_boot-stack.log
mbed test -m NU_PFM_M2351_NPSA_S -t IAR -n $TEST_LIST > m2351-npsa-s_iar_boot-stack.log
