#! /usr/bin/env bash

if ! [[ -x rightrot ]]; then
    echo "rightrot executable does not exist"
    exit 1
fi

../tester/run-tests.sh $*
