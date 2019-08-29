#!/bin/sh

#mbed test -m NUMAKER_PFM_NUC472 -t ARM > nuc472_arm.log
mbed test -m NUMAKER_PFM_NUC472 -t ARMC6 > nuc472_armc6.log
mbed test -m NUMAKER_PFM_NUC472 -t GCC_ARM > nuc472_gcc_arm.log
mbed test -m NUMAKER_PFM_NUC472 -t IAR > nuc472_iar.log
