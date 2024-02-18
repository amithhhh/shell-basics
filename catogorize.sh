#!/bin/bash

if [ "$#" -eq 0 ];then
	echo "path is empty!...."
	exit 1
fi


echo "Analysing the logfile"

file_types=(`sort -k 2 "$1" | cut -d ' ' -f 2 | cut -d ':' -f 1 | uniq`)

for i  in "${file_types[@]}";
do
	if [ -f "$i.log" ];
	then
		cat $1 | grep "$i" >> $i.log
	else
		touch $i.log
		cat $i | grep "$i" >> $i.log
	fi
done


echo "Log file created successfully"
