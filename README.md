# Bash Script with ANSI Escape Codes

This is a simple Bash script that uses ANSI escape codes to display "Hello World!" in red and bold text.

## Usage

To run the script, simply execute it in a Bash terminal:

```bash
$ ./flash_text.sh```

The script will display "Hello World!" in red and bold text, and make it appear and disappear repeatedly until you press a key.

## Customization

You can customize the appearance of the text by modifying the `text` variable in the script. This variable uses ANSI escape codes to set the foreground color and text style of the text.

The script currently displays the text in red and bold. If you want to change it to a different color and style (e.g., blue and underlined), you can modify the `text` variable as follows:
```bash
text="${red}${bold}Hello World!${reset}"```

```bash
text="${blue}${underlined}Hello World!${reset}"
```

You can also define your own ANSI escape codes for colors and text styles by using the `tput` command and the `setaf`, `setab`, and `sgr` capabilities.

The script also includes functions for setting the foreground color, background color, and text style. You can use these functions to set the appearance of text in your own scripts.

## License

This script is licensed under the MIT License. Feel free to use it, modify it, and distribute it as you see fit.
