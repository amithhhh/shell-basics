#!/bin/bash

if [ $# -eq 0 ];then
	echo "please provide a directory path"
	exit 1
fi


for i in `find "$1" -type f`;
do
	if [ -d ${i#*.} ];
	then
		mv "$i"  "$1/${i#*.}"
	else
		cd "$1"
		mkdir "${i#*.}"
		mv "$i"  "$1/${i#*.}"
	fi
done
