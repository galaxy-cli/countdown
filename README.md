# countd

A minimalist, high-precision CLI countdown timer that leverages `pv` to provide a clean, drift-corrected terminal stopwatch.

### Prerequisites

- **pv** (Pipe Viewer): The underlying visual tracking engine

You can install this dependency on Debian/Ubuntu systems via:
```bash
sudo apt update && sudo apt install pv
```

### Installation

Give the script execution permissions and move it into your local binary directory:

```bash
chmod +x countd
mv countd ~/.local/bin/          # Or anywhere else in your $PATH
```

### Usage

```bash
countd -s 30                # Raw mode: countdown for 30 seconds
countd -m 05:00             # Minute mode: countdown for 5 minutes
countd -h 1:30:00           # Hour mode: countdown for 1 hour and 30 minutes
```

### Options



| Option | Argument | Description |
| :--- | :---: | :--- |
| `-s, --seconds`   | `NUM` | countdown duration in raw NUM seconds |
| `-m, --minutes`   | `MM:SS`| countdown duration in minutes and seconds |
| `-h, --hours`     | `H:MM:SS`| countdown duration in hours, minutes, and seconds |
| `--help`          | None | Show help message and exit |
| `-v, --version`   | None | Output version information and exit |