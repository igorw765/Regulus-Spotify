#!/bin/bash

# Set the path to the weather.sh script
script_path="$HOME/.config/conky/Regulus-Spotify/scripts/weather.sh"

# Check if the weather.sh script exists
if [ -f "$script_path" ]; then
  # Prompt the user to enter the new city ID
  read -p "Enter the new city ID: " new_city_id

  # Replace the city ID in the script
  sed -i "s/city_id=[0-9]*/city_id=$new_city_id/" "$script_path"
  echo "City ID in $script_path has been updated to $new_city_id."
  echo "It may take a while before you can see the changes."
else
  echo "The weather.sh script does not exist at $script_path."
fi
