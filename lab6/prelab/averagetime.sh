#!/bin/bash
# averagetime.sh
# Adarsh Solanki as5nr
# 3/13/12
# CS 2150: Lab 6


echo "What is the name of the dictionary file?"
read dict
echo "What is the name of the grid file?"
read grid


time1=`./a.out $dict $grid | tail -1`
time2=`./a.out $dict $grid | tail -1`
time3=`./a.out $dict $grid | tail -1`
time4=`./a.out $dict $grid | tail -1`
time5=`./a.out $dict $grid | tail -1`

echo "Times in milliseconds:"
echo $time1
echo $time2
echo $time3
echo $time4
echo $time5

echo "total: "
total=`expr $time1 + $time2`
total=`expr $total + $time3`
total=`expr $total + $time4`
total=`expr $total + $time5`
echo $total
count=5
echo "average time in milliseconds: "
echo `expr $total / $count`


