#!/bin/bash

# num=10
# if [ $num -lt 10 ]
# then
# echo "number $num is less than 10"
# elif [ $num -eq 10 ]
# then
# echo "number $num is equal to 10"
# else
# echo "number $num is greater than 10"
# fi

#even or odd

echo "enter a number:"
read num
echo "number is $num"

if [ $num % 2 eq 0 ]
then
echo "number $num is even"
else
echo "number $num is odd"
fi