#!/usr/bin/env bash

if [ -f "../build/Makefile" ]; then
	cd ../build
    make -j4
    echo "Build Completed!"
else
    echo "Makefile doesn't exist, run cmake.sh"
    exit
fi
