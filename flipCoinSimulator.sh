#!/bin/bash/ -x


#MasterMessage
echo "Welcome To Flip-Coin Simulator"

#SimulationBegins
coinCheck=$((RANDOM%2))
echo "The Outcome Is :"
flipCoinSimulator()
{
	if [ $1 -eq 1 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
}
flipCoinSimulator $coinCheck
