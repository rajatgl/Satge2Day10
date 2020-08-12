#!/bin/bash -x

#Master's content
echo "Some Basic Arithmatic Operations Stage2"

#ReadingInputVariables
echo "Enter the follow values"
read -p "a :" a
read -p "b :" b
read -p "c :" c


#Declaring Dictionary For Storing Our Results
declare -A Results


#Computing_a+b*c
result1=$(echo $b $c | awk '{printf "%4.1f\n",$1*$2}')
result1=$(echo $result1 $a | awk '{printf "%4.1f\n",$1+$2}')
echo "Computing_a+b*c : $result1"
Results["Op"1]=$result1

#Computing_a*b+c
result2=$(echo $a $b | awk '{printf "%4.1f\n",$1*$2}')
result2=$(echo $result2 $c | awk '{printf "%4.1f\n",$1+$2}')
echo "Computing_a*b+c : $result2"
Results["Op"2]=$result2


#Computing_c+a/b
result3=$(echo $a $b | awk '{printf "%4.1f\n",$1/$2}')
result3=$(echo $result3 $c | awk '{printf "%4.1f\n",$1+$2}')
echo "Computing_c+a/b : $result3"
Results["Op"3]=$result3

#Computing_a%b+c
result4=$(echo $a $b | awk '{printf "%4.1f\n",$1%$2}')
result4=$(echo $result4 $c | awk '{printf "%4.1f\n",$1+$2}')
echo  "Computing_a%b+c : $result4"
Results["Op"4]=$result4

#For Pinting Key And Values Of Dictionary
#echo "${!Results[@]}"
#echo "${Results[@]}"

