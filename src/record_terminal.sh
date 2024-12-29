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
terminalizer record "$RECORDING_FILE" --skip-sharing

# Render the recording to gif
echo "Rendering recording to gif..."
cd $VIDEOS_DIR
terminalizer render "$RECORDING_FILE"

# Create symlinks to latest files
ln -sf "$RECORDING_FILE" "$VIDEOS_DIR/latest_recording.yml"
ln -sf "${RECORDING_FILE%.*}.gif" "$VIDEOS_DIR/latest.gif"

echo "Done!"
echo "Recording saved to: $RECORDING_FILE"
echo "Rendered gif saved to: ${RECORDING_FILE%.*}.gif"
echo "Symlinks created:"
echo "  Latest recording: $VIDEOS_DIR/latest_recording.yml"
echo "  Latest gif: $VIDEOS_DIR/latest.gif"
