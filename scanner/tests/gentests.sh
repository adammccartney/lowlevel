#!/usr/bin/env bash

# Quick script to generate the files used for testing.

for i in {1..5}
do
    echo "setting up test $i";
    touch "$i.out" "$i.err" "$i.rc" "$i.desc" "$i.desc" "$i.run"
    echo "0" > "$i.rc"
    if [[ $i == 1 ]]; then 
        cat scanner.run | head $((-i)) > "$i.run"
        cat scanner.out | head $((-i)) > "$i.out"
    else
        cat scanner.run | head $((-i)) | tail -1 > "$i.run"
        cat scanner.out | head $((-i)) | tail -1 > "$i.out"
    fi
done  
