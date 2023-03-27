#!/bin/bash

# Function to set the foreground color
# Usage: set_foreground_color COLOR
set_foreground_color () {
  tput setaf $1
}

# Function to set the background color
# Usage: set_background_color COLOR
set_background_color () {
  tput setab $1
}

# Function to set the text style
# Usage: set_text_style STYLE
set_text_style () {
  tput $1
}

# Define some ANSI escape codes for commonly used colors
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

# Define some ANSI escape codes for commonly used text styles
bold=$(tput bold)
dim=$(tput dim)
underlined=$(tput smul)
blink=$(tput blink)
reverse=$(tput rev)
hidden=$(tput invis)

# Define the text to be displayed, with the ANSI escape codes for color and style
text="${red}${bold}Hello World!${reset}"

# Loop to make the text appear and disappear
while true
do
  # Display the text
  echo -ne "$text"

  # Wait for 0.05 seconds
  sleep 0.05

  # Check if the Enter key has been pressed
  read -rsn1 -t 1 && break

  # Clear the text by moving the cursor to the beginning of the line and clearing the rest of the line
  echo -ne "\r\033[K"

  # Wait for 0.05 seconds
  sleep 0.05
done

# Print a new line to separate the output from the command prompt
echo ""

# Reset the text style and color
reset=$(tput sgr0)
echo "${reset}"
