#!/bin/bash

#GDB_PATH=/Users/dunaevaleksey/opt/gcc-arm-none-eabi-7-2018-q2-update/bin
GDB_PATH=/usr/local/bin
ROJECT_NAME=testSPLBasic

$GDB_PATH/stm8-gdb ./build/$PROJECT_NAME.elf -tui