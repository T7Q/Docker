#!/bin/bash

red=`tput setaf 1`
grn=`tput setaf 2`
blu=`tput setaf 4`
mag=`tput setaf 5`
white=`tput sgr0`

RED='\033[0;31m'
NC='\033[0m'

read -p "
${grn} Check 00_how_to_docker
${blu}1${white} Check what VM installed
${blu}2${white} VM machine
" number
if [ $number == 1 ]
then 
	cat /00_how_to_docker/17
	bash ./00_how_to_docker/17
	echo "${grn}Select a command:"
fi


