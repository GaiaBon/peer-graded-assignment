#!/bin/bash

correct_answer=$(ls|wc -l)
finish=0

function check_value {
  if [[ $response -eq $correct_answer ]]
	then
		echo "congratulations!"
		finish=1
	else
		if [[ $response -gt $correct_answer ]]
		then
			echo "The answer is too high, try again."
		else
			echo "The answer is too low, try again."
		fi
	fi
}

while [ "$finish" -eq 0 ];
do
	echo "How many files are in the current directory?"
	read response
	check_value
done