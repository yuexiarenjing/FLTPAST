#!/bin/bash

files=$(ls ./)
for file in ${files}
do
  	f=$(echo -e "$file" | grep -Eo "[a-zA-Z_0-9\-]+\.c") # modify for cpp or cc
        if [ -n "$f" ]
        then
            	len=${#f}
                f=${f:0:len-2} # modify for cpp or cc
                echo -e "$f"
                c_file="$f.c" # modify for cpp or cc
                ll_file="$f.ll"
                clang  -emit-llvm -S -c $c_file -o $ll_file  # add -I[include_path] if needed
        fi
done
