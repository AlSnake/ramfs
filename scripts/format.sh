#!/usr/bin/env bash

cd ..
clang-format -i src/*.cpp src/*.h src/*/*.cpp src/*/*.h src/*/*/*.cpp src/*/*/*.h
