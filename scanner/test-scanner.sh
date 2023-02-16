#! /usr/bin/env bash

if ! [[ -x scanner ]]; then
    echo "scanner executable does not exist"
    exit 1
fi

../tester/run-tests.sh $*
