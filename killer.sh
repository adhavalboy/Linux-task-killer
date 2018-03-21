#!/bin/bash
echo "<<<<<Welcome To Killer>>>>>"
top -n 1
echo "Enter The Process name Or PID"
read input
re='^[0-9]+$'
if ! [[ $input =~ $re ]] ; then
	killall -9 $input 
else
	kill -9 $input
fi
