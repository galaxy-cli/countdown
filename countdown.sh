#!/bin/bash
#          ___ ___  _   _ _ __ | |_ __| | _____      ___ __    ___| |
#         / __/ _ \| | | | '_ \| __/ _` |/ _ \ \ /\ / / '_ \  / __| '_ \
#        | (_| (_) | |_| | | | | || (_| | (_) \ V  V /| | | |_\__ \ | | |
#         \___\___/ \__,_|_| |_|\__\__,_|\___/ \_/\_/ |_| |_(_)___/_| |_|

# User inputs integer in minutes
read -p "Countdown (in minutes): " count

# Checks user input for positive integers
if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
  echo "Please enter a positive integer."
  exit 1
fi

# Calculate total time in seconds
time=$((60 * count))

# Countdown timer in 00:00 format
for ((i=time; i>0; i--)); do
  mins=$((i / 60))
  secs=$((i % 60))
  printf "\r%02d:%02d" "$mins" "$secs"
  sleep 1
done

# When timer completes
echo -e "\nTime's up!"
