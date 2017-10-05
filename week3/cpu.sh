#!/bin/bash


#grep is a search, in this case for a string processor in the file /proc/cpuinfo
#Feed the output of grep into another command, which counts
#the number of lines
#wc -l counts the number of lines that where feed as input 

cnt=`grep processor /proc/cpuinfo | wc -l` 
#cnt is the varible name of the output of the command



if [ $cnt -le $1 ]; then
#if the cnt varible is less than 2 then do the following

  echo "Not enough CPUS, exiting"

fi
#fi is the closing paramater for if statements 



