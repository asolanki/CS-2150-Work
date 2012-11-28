#!/bin/bash
# averagetime.sh
# Adarsh Solanki as5nr
# 3/22/12
# CS 2150: Lab 6

while true
do
    numIters=5

    echo "Enter 'quit' to quit"
    read input

    if [ $input == "quit" ]
    then
      exit 0
    fi

    sum=0

    for (( i=0; i<=numIters; i++ ))
    do
        echo "Running iteration ${i}:"
        time=`./a.out ${input}`
        sum=`expr $sum + $time`
        echo "time taken: ${time} milliseconds"
    done


    echo "Average time: "`expr $sum / 5` milliseconds

# for i -> input
#   echo './a.out ' + $input
done
