# Terminal Recording Tool

A simple command-line tool to record terminal sessions and automatically convert them to GIF animations using Terminalizer.

## Features

- Records terminal sessions
- Automatically converts recordings to GIF
- Creates symlinks to latest recording and GIF
- Saves recordings in ~/Videos/terminal_recordings

## Prerequisites

- Terminalizer (`npm install -g terminalizer`)

## Installation

```bash
sudo ./install.sh
```

## Usage

Simply run:
```bash
record
```

The script will:
1. Create a Videos/terminal_recordings directory if it doesn't exist
2. Start recording (press Ctrl+D to stop)
3. Automatically render the recording to GIF
4. Create symlinks to the latest recording and GIF

## Output Files

- Recording: `~/Videos/terminal_recordings/recording_TIMESTAMP.yml`
- GIF: `~/Videos/terminal_recordings/recording_TIMESTAMP.gif`
- Latest recording symlink: `~/Videos/terminal_recordings/latest_recording.yml`
- Latest GIF symlink: `~/Videos/terminal_recordings/latest.gif`

## License

MIT License - see LICENSE file for details
