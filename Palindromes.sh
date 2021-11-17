#!/bin/bash -x


read -p "Enter the values:" x
number=$x
rev=0
while [ $number -ne 0 ]
do
         n=`expr $number % 10`
         rev=$((($rev * 10) + $n))
         number=`expr $number / 10`
done
if [ $rev -eq $x ]
then
       echo "$x is palindrome"
else
       echo "$x is not palindrome"
fi
