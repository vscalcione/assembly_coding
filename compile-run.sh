#!/bin/bash

FILENAME=${1?Error: No filename given}
FILE=$FILENAME.asm
touch $FILE
vi $FILE
nasm -f elf64 -o $FILENAME.o $FILE
ld $FILENAME.o -o $FILENAME
mkdir $FILENAME-dir
mv $FILENAME $FILENAME.o $FILE $FILENAME-dir/
cd $FILENAME-dir/
./$FILENAME
