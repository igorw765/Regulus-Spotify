#!/bin/bash

# Directory where the scripts are located
scripts_directory="$HOME/.config/conky/Regulus-Spotify/scripts/"

cd $scripts_directory & chmod +x *

# Function to execute a script
execute_script() {
  script_name=$1
  echo "Executing script: $script_name"
  cd "$scripts_directory" && "./$script_name"
}

# Prompt user for execution (default answer: Y)
read -p "Do you want to change your current weather localization? (Y/n): " execute_localization
execute_localization=${execute_localization:-Y}  # Set default value to Y if user presses enter without input

if [[ $execute_localization == "y" || $execute_localization == "Y" ]]; then
  execute_script localization.sh
fi

# Prompt user for execution (default answer: Y)
read -p "Do you want to change text color? (Y/n): " execute_color
execute_color=${execute_color:-Y}  # Set default value to Y if user presses enter without input

if [[ $execute_color == "y" || $execute_color == "Y" ]]; then
  execute_script color.sh
fi

# Prompt user for execution (default answer: Y)
read -p "Do you want to change network interface (required for graphs to work correctly)? (Y/n): " execute_network
execute_network=${execute_network:-Y}  # Set default value to Y if user presses enter without input

if [[ $execute_network == "y" || $execute_network == "Y" ]]; then
  execute_script network.sh
fi

# Prompt user for execution (default answer: Y)
read -p "Do you want to change rings color? (Y/n): " execute_rings
execute_rings=${execute_rings:-Y}  # Set default value to Y if user presses enter without input

if [[ $execute_rings == "y" || $execute_rings == "Y" ]]; then
  execute_script rings.sh
fi


$HOME/.config/conky/Regulus-Spotify/start.sh
echo "Setup complited successfully"
