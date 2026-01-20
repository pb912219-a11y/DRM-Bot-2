#!/bin/bash

echo "Starting DRM Bot..."

# Go to project directory
cd "$(dirname "$0")"

# Load .env variables
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

# Run bot
python3 bot.py
