#!/bin/bash

# Get user input for the new hex code
read -p "Enter the new text color in hex code (or 'default' for orange): " new_hex_code

# Set the path to the Regulus.conf file
conf_file="$HOME/.config/conky/Regulus-Spotify/Regulus.conf"

# Define the color line pattern to match
color_line_pattern="color3 ="

# Define the default color value
default_color_value="ED8207"

# Check if the user input is blank and assign the appropriate hex code
if [ -z "$new_hex_code" ]; then
    new_hex_code=$default_color_value
else
    # Remove the '#' symbol if it exists in the user input
    new_hex_code="${new_hex_code//#/}"
fi

# Use sed to replace the color line in the Regulus.conf file
sed -i "s/${color_line_pattern} '[A-Fa-f0-9]\{6\}'/${color_line_pattern} '${new_hex_code}'/" "$conf_file"

echo "Color has been updated."
