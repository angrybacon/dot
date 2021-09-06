#!/usr/bin/sh

# Select the region
id=$(dunstify --printid --urgency low "Screenshot" "Select a region...")
region=$(slop --format '-g %g' --nodecorations)
dunstify --close $id

# Capture
path="/tmp/screenshot.$(date '+%Y-%m-%d.%H:%M:%S').png"
ffcast $region png $path

# Copy to the clipboard
xclip -selection clipboard -target image/png $path
dunstify --urgency low "Screenshot" "Copied to the clipboard"
