#!/bin/sh
#rm -rf cscope.files cscope.files

if [ $# -eq 0 ]
  then
    echo "input dir."
    exit 1
elif [ $# -eq 1 ]
    then
    INPUT_DIR=$1
fi

find ${INPUT_DIR} \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print >> cscope.files
cscope -i cscope.files

