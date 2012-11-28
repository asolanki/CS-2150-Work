#!/bin/bash
# automate compiling optimized and non-optimized c code

g++ -S optimize.cpp 
g++ -S -O2 -o optimized.s optimize.cpp
echo "Compiled optimize.s and optimized.s!"
