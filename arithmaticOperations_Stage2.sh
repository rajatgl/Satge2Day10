#!/bin/bash -x

#Master's content
echo "Some Basic Arithmatic Operations Stage2"

#ReadingInputVariables
echo "Enter the follow values (Intergers Only)*"
read -p "a :" a
read -p "b :" b
read -p "c :" c

#Computing_a+b*c
echo "Computing_a+b*c : $((b*c+a))"

#Computing_a*b+c
echo "Computing_a*b+c : $((a*b+c))"
