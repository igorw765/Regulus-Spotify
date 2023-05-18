#!/bin/bash

# Retrieve the default network interface
default_interface=$(ip route show default | awk '/default via/ {print $5}')

# Path to the Regulus.conf file
conf_file="$HOME/.config/conky/Regulus-Spotify/Regulus.conf"

# Replace "eno2" with the default network interface name in the conf file
sed -i "s/eno2/$default_interface/g" "$conf_file"
