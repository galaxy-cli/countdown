#!/bin/bash
##################
#                #
#  countdown.sh  #
#                #
##################

read -p "Countdown(in mintues): " count

time=$((60*$count))

for i in $(seq $time -1 1); do 

 echo -ne "\r$i"; sleep 1

done
