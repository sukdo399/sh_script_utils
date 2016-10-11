#!/bin/bash

printf "Enter library name: "
read libname
for i in `find . -type f -perm /111 -exec file '{}' \;| grep "dynamically linked" | cut -f 1 -d ':'`; do
    readelf -d $i 2>/dev/null | grep $libname >/dev/null && echo $i
done
