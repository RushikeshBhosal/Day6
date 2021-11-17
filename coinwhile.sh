#!/bin/bash -x

head=0
tail=0
while [ $head -lt 11 -a $tail -lt 11 ]
do
         randomCheck=$((RANDOM%2));
if [ $randomCheck -eq 0 ]
then
         ((head++))
         echo "Head $head";
else
         ((tail++))
         echo "Tail $tail";
fi
echo $head
echo $tail
done
