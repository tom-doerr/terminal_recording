#!/bin/bash

# Create Videos directory if it doesn't exist
VIDEOS_DIR="$HOME/Videos/terminal_recordings"
mkdir -p "$VIDEOS_DIR"

# Get current timestamp for unique filename
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
RECORDING_FILE="$VIDEOS_DIR/recording_$TIMESTAMP.yml"

echo "Starting terminal recording..."
echo "Press Ctrl+D to stop recording"

# Record the terminal session
terminalizer record "$RECORDING_FILE"

# Render the recording to gif
echo "Rendering recording to gif..."
terminalizer render "$RECORDING_FILE"

echo "Done!"
echo "Recording saved to: $RECORDING_FILE"
echo "Rendered gif saved to: ${RECORDING_FILE%.*}.gif"
