#!/bin/sh

#mbed test -m NUMAKER_PFM_M453 -t ARM > m453_arm.log
mbed test -m NUMAKER_PFM_M453 -t ARMC6 > m453_armc6.log
mbed test -m NUMAKER_PFM_M453 -t GCC_ARM > m453_gcc_arm.log
mbed test -m NUMAKER_PFM_M453 -t IAR > m453_iar.log
