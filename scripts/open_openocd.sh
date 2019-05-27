#!/bin/bash

#OPENOCD_PATH=/Users/dunaevaleksey/opt/gnu-mcu-eclipse/openocd/0.10.0-10-20181020-0522/bin
OPENOCD_PATH=/usr/local/bin

$OPENOCD_PATH/openocd -f interface/stlink-v2.cfg -f target/stm8s003.cfg -c "init; reset halt"