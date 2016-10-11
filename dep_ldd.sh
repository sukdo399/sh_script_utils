#!/bin/bash

LDD=/home/sh.ko/ndk/toolchains/arm-linux-gnueabi-4.8/bin/arm-lg115x-linux-gnueabi-ldd

printf "Enter library name: "
read libname

for i in `find . -type f -executable`; do
    $LDD --root . $i 2>/dev/null | grep $libname && echo $i
done
