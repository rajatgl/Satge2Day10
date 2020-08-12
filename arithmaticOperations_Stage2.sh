#!/bin/bash -x

#Master's content
echo "Some Basic Arithmatic Operations Stage2"

#ReadingInputVariables
echo "Enter the follow values(INTEGER ONLY)**"
read -p "a :" a
read -p "b :" b
read -p "c :" c

#Computing_a+b*c
echo "Computing_a+b*c : $((b*c+a))"

#Computing_a*b+c
echo "Computing_a*b+c : $((a*b+c))"

#Computing_c+a/b
result=$(echo $a $b | awk '{printf "%4.3f\n",$1/$2}')
result=$(echo $result $c | awk '{printf "%4.3f\n",$1+$2}')
echo "Computing_c+a/b :$result"

#Computing_a%b+c
result1=$(echo $a $b | awk '{printf "%4.3f\n",$1%$2}')
result1=$(echo $result1 $c | awk '{printf "%4.3f\n",$1+$2}')
echo  "Computing_a%b+c :$result1"
