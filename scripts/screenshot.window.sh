#!/usr/bin/sh

# Select the window and capture
id=$(dunstify --printid --urgency low "Screenshot" "Select a window...")
path="/tmp/screenshot.$(date '+%Y-%m-%d.%H:%M:%S').png"
ffcast -w png $path
dunstify --close $id

# Copy to the clipboard
xclip -selection clipboard -target image/png $path
dunstify --urgency low "Screenshot" "Copied to the clipboard"
