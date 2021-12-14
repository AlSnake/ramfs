#!/usr/bin/env bash

if [ ! -d "../build" ]; then
    mkdir ../build
    cd ../build

elif [ -d "../build" ]; then
    cd ../build
fi

if [ -f "../CMakeLists.txt" ]; then
    cmake ..
else
    echo "CMakeLists.txt doen't exist!"
    exit
fi
