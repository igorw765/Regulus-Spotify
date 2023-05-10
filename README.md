## Table of Contents
- [Regulus-Spotify](#regulus-spotify)
  - [Description](#description)
  - [Installation](#installation)
  - [Tested Environment](#tested-environment)
  - [Screenshots](#screenshots)
  - [License](#license)


# Regulus-Spotify

Regulus-Spotify is a conky theme available for all Linux systems. This theme is based on the Regulus theme, which is available at https://github.com/closebox73/Leonis. It displays weather, time, date, CPU, RAM, discs, and internet usage. When a song is playing on Spotify, it displays the song's name, artist, and cover.

## Requirements
- Conky
- Cairo
- Lua
- Ffmpeg
- Playerctl

## Installation

To install the theme, follow the steps below:

1. Clone the repository
   ```
   git clone https://github.com/<your-github-username>/Regulus-Spotify.git
   ```

2. Install the required dependencies:
   ```
   sudo apt-get install conky cairo lua5.3 ffmpeg playerctl
   ```

3. Download all the fonts from the font folder.

4. If your monitor resolution is not 1080x1920p, you may need to modify the code manually. To change the position of elements, play with the `offset`, `voffset`, and `alignr` values.

5. To modify the color of the text, change this line in the `Regulus.conf` file: `color3 = 'ED8207',` to the corresponding hex code.

6. To change the rings color, modify the values of `bg_colour` and `fg_colour` in the `rings.lua` file located in the `scripts` folder.

7. To display network speeds properly, you need to modify the `downspeedgraph` and `upspeedgraph` lines in the `Regulus.conf` file to match the name of the network adapter used by your system. You can use the `ip a` command to check the name of your network adapter.

8. Assign your current city's `city_id` to the `city_id=` line inside the `weather.sh` file located in the `scripts` folder. You can find your city's ID on the [OpenWeatherMap website](https://openweathermap.org/).

9. Start the theme by running the `start.sh` script:
   ```
   bash /path/to/Regulus-Spotify/start.sh
   ```

The `start.sh` script will set the necessary permissions and start the conky command to display the theme.

## Tested Environment
This code was tested on Arch Linux with the Gnome desktop environment.

## Screenshots
![Regulus-Spotify Screenshot 1](/screenshots/screenshot1.png)

![Regulus-Spotify Screenshot 2](/screenshots/screenshot2.png)

![Regulus-Spotify Screenshot 3](/screenshots/screenshot3.png)

## License
This project is licensed under the GPL-3.0 License. See the LICENSE file for details.
