#!/bin/bash

printf "Enter symbol "
read sym
for i in `find . -type f -perm /111 -exec file '{}' \;| grep "dynamically linked" | cut -f 1 -d ':'`; do
    nm $i 2>/dev/null | grep $sym && echo $i
done
