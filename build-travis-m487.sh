#!/bin/sh
python mbed-os/tools/build.py -m NUMAKER_PFM_M487 -t GCC_ARM -j 4 -c --dsp --rtos --usb                         > m487_lib.log
python mbed-os/tools/make.py -m NUMAKER_PFM_M487 -t GCC_ARM -c -n MBED_2,MBED_10,MBED_11,MBED_16                > m487_mbed.log
python mbed-os/tools/make.py -m NUMAKER_PFM_M487 -t GCC_ARM -c --usb -n USB_1,USB_2,USB_3                       > m487_usb.log
