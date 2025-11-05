# countdown

A simple and flexible **Bash countdown timer** with support for multiple input formats, optional milliseconds display, and a visual progress bar.

---

## Overview

`countdown` is a lightweight Bash script designed to count down from a specified time and display the remaining time in a clean and customizable format.

It supports specifying the duration in seconds, minutes:seconds, or hours:minutes:seconds formats, with options for displaying milliseconds and a progress visualizer.

---

## Features

- Accepts countdown duration as:
  - Seconds (e.g., `-s 25`)
  - Minutes and seconds (e.g., `-m 05:30`)
  - Hours, minutes, and seconds (e.g., `-h 1:15:30`)
- Strict formatting for input ensures precision and error checking.
- Optional millisecond display, updating every 0.1 seconds.
- Visual progress bar showing countdown progress.
- Cancellation trap on `Ctrl+C` with graceful message.
- Simple dependency: runs in any Bash environment, no external programs required apart from standard Unix utilities.

---

## Installation

1. **Download the script**:
wget https://raw.githubusercontent.com/galaxy-cli/countdown/main/countdown.sh -O countdown


2. **Make executable**:
chmod +x countdown


3. **Optionally move to your PATH**:
mv countdown ~/.local/bin/


---

## Usage

countdown -s SECONDS [-S] [-v] [--alert]
countdown -m MM:SS [-S] [-v] [--alert]
countdown -h H:MM:SS [-S] [-v] [--alert]
countdown --help


| Option         | Description                                        |
|----------------|--------------------------------------------------|
| `-s SECONDS`        | Countdown in seconds (positive integer)          |
| `-m MM:SS`          | Countdown in minutes and seconds (strict format) |
| `-h H:MM:SS`        | Countdown in hours, minutes, and seconds          |
| `-S`                | Show milliseconds (updates every 0.1 seconds)    |
| `-v`                | Show visual progress bar                           |
| `--alert MESSAGE`   | Alert message to display (must be quoted if multiple words) |
| `--help`            | Show this help message                             |

---

## Examples

- Countdown for 25 seconds, showing milliseconds and visualizer:
countdown -s 25 -S -v


- Countdown for 5 minutes and 30 seconds, with visualizer but no milliseconds:
countdown -m 05:30 -v


- Countdown for 1 hour, 15 seconds, showing milliseconds but no visualizer:
countdown -h 0:01:15 -S


- Show help:
countdown --help

---

## Notes and Tips

- Exactly one of `-s`, `-m`, or `-h` **must** be specified.
- Input formats are strictly validated to prevent errors.
- To cancel countdown early, press `Ctrl+C`; the script will gracefully handle it.
- The visual progress bar updates smoothly when `-v` is enabled.
- Script uses built-in Bash capabilities and common Unix tools (`awk`, `sleep`, etc); no additional dependencies.
- Runs well on typical Linux/macOS Bash shells.

---

## Troubleshooting

- If you encounter errors about invalid formats, please double-check the input time format.
- On systems where millisecond display lag is high, try disabling `-S` (milliseconds).
- Ensure the terminal supports carriage return (`\r`) for smooth countdown updates.
- If `sleep` is not accurate, timing may be slightly off (common with some shells).

---

## License

This project is licensed under the MIT License. See the LICENSE file for details.

---

## Author & Contact

**galaxy-cli**

GitHub: [https://github.com/galaxy-cli/countdown](https://github.com/galaxy-cli/countdown)
