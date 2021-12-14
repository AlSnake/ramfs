#!/usr/bin/env bash

if [ ! -d "../build" ]; then
    mkdir ../build
    cd ../build

elif [ -d "../build" ]; then
    cd ../build
fi

valgrind --leak-check=full \
        --show-leak-kinds=all \
        --track-origins=yes \
        --verbose \
        --log-file=../build/valgrind-out.txt \
        ../build/src/RamFS $1
