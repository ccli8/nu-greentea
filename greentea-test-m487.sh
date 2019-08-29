#!/bin/sh

#mbed test -m NUMAKER_PFM_M487 -t ARM > m487_arm.log
mbed test -m NUMAKER_PFM_M487 -t ARMC6 > m487_armc6.log
mbed test -m NUMAKER_PFM_M487 -t GCC_ARM > m487_gcc_arm.log
mbed test -m NUMAKER_PFM_M487 -t IAR > m487_iar.log
