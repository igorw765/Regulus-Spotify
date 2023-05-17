#!/bin/bash

# Set the path to the Regulus-Spotify folder
spotify_folder="$HOME/.config/conky/Regulus-Spotify"

# Set the path to the rings-v1.2.1.lua file
rings_file="$spotify_folder/scripts/rings-v1.2.1.lua"

# Define the default foreground and background colors
default_fg_color="ED8207"
default_bg_color="FCBB42"

# Get user input for the new foreground color
read -p "Enter the new rings foreground color in hex code (e.g., ED8207, or leave empty for default: $default_fg_color): " fg_hex_code

# Remove the '#' symbol if it exists in the user input
fg_hex_code="${fg_hex_code//#/}"

# Use the default foreground color if no input is provided
if [ -z "$fg_hex_code" ]; then
    fg_hex_code=$default_fg_color
fi

# Construct the new foreground color value
new_fg_color="0x$fg_hex_code"

# Get user input for the new background color
read -p "Enter the new rings background color in hex code (e.g., FCBB42, or leave empty for default: $default_bg_color): " bg_hex_code

# Remove the '#' symbol if it exists in the user input
bg_hex_code="${bg_hex_code//#/}"

# Use the default background color if no input is provided
if [ -z "$bg_hex_code" ]; then
    bg_hex_code=$default_bg_color
fi

# Construct the new background color value
new_bg_color="0x$bg_hex_code"

# Use sed to replace the foreground color in the rings file
sed -i "s/fg_colour=0x[A-Fa-f0-9]\{6\}/fg_colour=${new_fg_color}/" "$rings_file"

# Use sed to replace the background color in the rings file
sed -i "s/bg_colour=0x[A-Fa-f0-9]\{6\}/bg_colour=${new_bg_color}/" "$rings_file"

echo "Rings colors have been updated."
