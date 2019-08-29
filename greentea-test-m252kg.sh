#!/bin/sh

#mbed test -m NUMAKER_M252KG -t ARM > m252kg_arm.log
mbed test -m NUMAKER_M252KG -t ARMC6 > m252kg_armc6.log
mbed test -m NUMAKER_M252KG -t GCC_ARM > m252kg_gcc_arm.log
mbed test -m NUMAKER_M252KG -t IAR > m252kg_iar.log
