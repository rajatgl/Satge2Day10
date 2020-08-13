#!/bin/bash/ -x


#MasterMessage
echo $'Welcome To Flip-Coin Simulator\n'

#constants
Heads=0
Tails=0

#SimulationBegins
#coinCheck=$((RANDOM%2))
read -p "Enter Number Of Flips :" n
echo $'The Outcome Is : \n'

#SimulatorFunction
flipCoinSimulator()
{
	if [ $1 -eq 1 ]
	then
		echo "H"
		((Heads++))
	else
		echo "T"
		((Tails++))
	fi
}
#flipCoinSimulator $coinCheck

#Looping On Coin Simulator and cointing no. of wins for each outcome
for (( i=0 ; i<$n ; i++))
do
	coinCheck=$((RANDOM%2))
	flipCoinSimulator $coinCheck
done
echo ""
echo "Number Of Heads : $Heads"
echo "Number Of Tails : $Tails"
