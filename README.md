# SETUP
* Use `chmod u+x countdown` to make the script executable
* Use `./countdown` to run script
# USAGE
>  `countdown -s SECONDS | -m MM:SS | -h H:MM:SS [-S] [-v]`
# OPTIONS
-  `-s` SECONDS       Countdown in seconds
-  `-m` MM:SS         Countdown in minutes and seconds (strict two-digit seconds allowed)
-  `-h` H:MM:SS       Countdown in hours, minutes, and seconds (all two-digit components allowed)
-  `-S`               Show milliseconds (updates every 0.1s)
-  `-v`               Show visualizer (e.g. [===     ] 32%%)
-  `--help`           Show this help message
# EXAMPLES
>  `countdown -s 25 -S -v`
>  `countdown -m 05:30 -v`
>  `countdown -h 0:01:15 -S`
