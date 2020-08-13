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
multipleFlips()
{
	for (( i=0 ; i<$1 ; i++))
	do
		coinCheck=$((RANDOM%2))
		flipCoinSimulator $coinCheck
		if [[ $Heads -eq 21 || $Tails -eq 21 ]]
		then
			break;
		fi
	done
	
	echo ""
	echo "Number Of Heads : $Heads"
	echo "Number Of Tails : $Tails"
	if [ $Heads -gt $Tails ]
        then
                echo "Heads Win"
        elif [ $Tails -gt $Heads ]
        then
                echo "Tails Win"
        else
                echo "Its A draw"
     	fi
}
multipleFlips $n
