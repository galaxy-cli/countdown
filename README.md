# Countdown

A high-precision, drift-corrected CLI timer for Linux. This tool uses `pv` (Pipe Viewer) to provide a smooth, flicker-free progress bar and maintains perfect accuracy by rate-limiting a byte stream.

## Features
- **High Precision**: Uses byte-stream rate limiting for sub-second accuracy.
- **Flexible Input**: Supports seconds, `MM:SS`, or `H:MM:SS` formats.
- **System Notifications**: Optional desktop alerts via `notify-send`.
- **Clean UI**: A smooth progress bar that automatically adjusts to terminal width.

## Prerequisites
This script requires `pv` (Pipe Viewer). You can install it via your package manager:

`sudo apt install pv`

## Installation

1. Save the script as countdown.Make it executable:
`chmod +x countdown`

2. (Optional) Move it to your path to run it from anywhere:
`sudo mv countdown /usr/local/bin/`

## Usage
`countdown [OPTION]`

## Options

| Option | Description |
| :--- | :--- |
| `-s SECONDS` | Countdown in seconds |
| `-m MM:SS` | Countdown in minutes and seconds |
| `-h H:MM:SS` | Countdown in hours, minutes, and seconds |
| `--alert "MSG"` | Display a system notification when finished |
| `--help` | Show the help message |

## Examples
```
# 90-second timer
countdown -s 90

# 5-minute timer
countdown -m 05:00

# 1-hour timer with a desktop alert
countdown -h 1:00:00 --alert "Meeting starting now!"
```