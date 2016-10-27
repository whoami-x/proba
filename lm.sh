#!/bin/bash
int=5
while [ true ]
do

#echo "Hi, $USER" >> $1
echo >> $1
a=$(ps -eo user | sort | uniq -c)
n=0

declare -a array1
date >> $1
for b in $a
do
array1[$n]="$b"
n=$(( n+1 )) 
done

jj=${#array1[@]}
d=$(( jj/2 ))

x=$(( jj-1 ))
y=$(( jj-2 ))

for (( c=0; c<"d"; c++ ))
do
echo -n ${array1[$x]} - >> $1
echo ${array1[$y]} >> $1
x=$(( x-2 ))
y=$(( y-2 ))

done
sleep $int
done
