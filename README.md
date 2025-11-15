# Bash Script with ANSI Escape Codes

This is a simple Bash script that uses ANSI escape codes to display "Hello World!" in red and bold text.

## Usage

To run the script, simply execute it in a Bash terminal:

```bash
$ ./hello-world.sh
```

The script will display "Hello World!" in red and bold text, and make it appear and disappear repeatedly until you press a key.

## Customization

You can customize the appearance of the text by modifying the `text` variable in the script. This variable uses ANSI escape codes to set the foreground color and text style of the text.

For example, if you want to display the text in blue and underlined, you can modify the `text` variable as follows:

```bash
text="${blue}${underlined}Hello World!${reset}"
```

You can also define your own ANSI escape codes for colors and text styles by using the `tput` command and the `setaf`, `setab`, and `sgr` capabilities.

The script also includes functions for setting the foreground color, background color, and text style. You can use these functions to set the appearance of text in your own scripts.

## License

This script is licensed under the MIT License. Feel free to use it, modify it, and distribute it as you see fit.
