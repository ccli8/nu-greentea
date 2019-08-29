#!/bin/sh

#mbed test -m NUMAKER_PFM_NANO130 -t ARM > nano130_arm.log
mbed test -m NUMAKER_PFM_NANO130 -t ARMC6 > nano130_armc6.log
mbed test -m NUMAKER_PFM_NANO130 -t GCC_ARM > nano130_gcc_arm.log
mbed test -m NUMAKER_PFM_NANO130 -t IAR > nano130_iar.log
