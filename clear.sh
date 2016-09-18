#!/bin/bash

if [ -z $1 ]; then
	lines=50;
else
	lines=$1;
fi

for i in `seq 1 $lines`;
do
        printf "\n";
done 
