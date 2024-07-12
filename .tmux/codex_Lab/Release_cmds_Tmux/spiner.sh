#!/bin/bash

# rolling=( '\' '-' '/' '|')
# or this style, both are right, see man bash
rolling=(
	'\'
	'-'
	'/'
	'|'
)

spinner(){
	while [ 1 ]
	do 
		for i in "${rolling[@]}"
		do
			echo -en "\r$i  " 
			sleep 0.2
		done
	done
}
spinner
