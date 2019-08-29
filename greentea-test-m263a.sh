#!/bin/sh

#mbed test -m NUMAKER_IOT_M263A -t ARM > m263a_arm.log
mbed test -m NUMAKER_IOT_M263A -t ARMC6 > m263a_armc6.log
mbed test -m NUMAKER_IOT_M263A -t GCC_ARM > m263a_gcc_arm.log
mbed test -m NUMAKER_IOT_M263A -t IAR > m263a_iar.log
