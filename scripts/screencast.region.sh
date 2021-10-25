#!/usr/bin/sh

# Select the region
id=$(dunstify --printid --urgency low "Screencast" "Select a region to record...")
region=$(slop --format '-g %g' --nodecorations)

# Countdown
dunstify --replace $id --printid --urgency low "Screenshot" "Recording in 3 seconds"
sleep 1
dunstify --replace $id --urgency low "Screenshot" "Recording in 2 seconds"
sleep 1
dunstify --replace $id --urgency low --timeout 1000 "Screenshot" "Recording in 1 seconds"
sleep 1

# Capture
path="/home/angrybacon/Downloads/screencast.$(date '+%Y-%m-%d.%H:%M:%S').mp4"
ffcast $region rec $path

# Copy to the clipboard
# FIXME Wait for the record to be complete before accessing the path
# xclip -selection clipboard -target video/mp4 $path
dunstify --urgency low "Screencast" "Copied to $path"
