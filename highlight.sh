#!/bin/bash

#	       RED      GREEN    CYAN	  YELLOW   MAGENTA  BLUE
COLOR_REGEXES=('\e[31m' '\e[32m' '\e[96m' '\e[33m' '\e[35m' '\e[34m');

if [ -z $1 ]; then
	echo "No highlight argument provided"
	exit 1
fi

argNum=0;
cmd='';
for arg in "$@"
do
	if [[ $argNum != 0 ]] ; then
	   cmd="$cmd | "
	fi
	index=$(($argNum % ${#COLOR_REGEXES[@]}))
	cmd="$cmd perl -pe 's/($arg)/${COLOR_REGEXES[$index]}$&\e[0m/g'"
	((argNum+=1))
done

echo "Using: $cmd"
eval $cmd
