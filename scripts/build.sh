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

if [ -f "Makefile" ]; then
    make -j4
    echo "Build Completed!"
else
    echo "Makefile doesn't exist, run cmake .."
    exit
fi
