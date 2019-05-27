#!/bin/bash

#OPENOCD_PATH=/usr/local/bin
PROJECT_NAME=testSPLBasic
PROJECT_PATH_FULL=/Users/dunaevaleksey/Documents/STM8/Projects/$PROJECT_NAME
PROJECT_PATH=${PROJECT_PATH_FULL%/}

#$OPENOCD_PATH/openocd -f interface/stlink-v2.cfg -f target/stm8s003.cfg \
#-c "init" -c "reset init" -c "flash write_image erase \
#$PROJECT_PATH/build/$PROJECT_NAME.elf" -c "reset" -c "shutdown"

#echo "$PROJECT_PATH/build/$PROJECT_NAME.ihx"
stm8flash -c stlinkv2 -p stm8s003f3 -s flash -w "$PROJECT_PATH/build/$PROJECT_NAME.ihx"