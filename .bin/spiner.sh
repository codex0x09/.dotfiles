#!/bin/bash

# rolling=( '\' '-' '/' '|')
# or this style, both are right, see man bash
rolling=(
	'/'
	'-'
	'\'
	'|'
)

spinner(){
	clear
	echo -e "\n\n\n"
	while [ 1 ]
	do 
		for i in "${rolling[@]}"
		do
			echo -en "\r >> [$i] << " 
			sleep 0.2
		done
	done
}
spinner
