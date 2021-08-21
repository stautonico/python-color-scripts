# Python Color Scripts

ASCII art for your terminal! A rework of DistroTube(Derek Taylor)'s color scripts

![Screenshot of some of the artworks](docs/screenshot.png)

Derek Taylor ([DistroTube](https://www.youtube.com/channel/UCVls1GmFKf6WlTraIb_IaJg)) has this script
called [colorscript](https://gitlab.com/dwt1/shell-color-scripts) which shows a random ASCII art when called. Most
people use it when their terminal opens. This is a modified/custom version of that idea.

# Dependencies

- python3 (theoretically, this should work with python2, but I'm not actively testing that)

# Installation

Installation is easy, just a simple one-liner

```shell
   bash <(curl -s https://raw.githubusercontent.com/stautonico/python-color-scripts/main/install.sh)
```

# Updating

This script has a built-in updater.

To update, simply:

```shell
   sudo python-colorscript --update
```

If a new version exists, it will automatically install.

# Usage

```shell
   usage: python-colorscript [-h] [--16] [--256] [--left-padding LEFT_PADDING] [--top-padding TOP_PADDING] [--art ART]
                             [--list] [--random-color-mode] [--ignore-distro] [--blacklist BLACKLIST] [--version]
                             [--update] [--uninstall]
   
   Draw some ASCII art!
   
   optional arguments:
     -h, --help            show this help message and exit
     --16                  Draw in 16 colors mode
     --256                 Draw in 256 colors mode
     --left-padding LEFT_PADDING, -l LEFT_PADDING
                           Amount of space to add to the left side of the art
     --top-padding TOP_PADDING, -t TOP_PADDING
                           Amount of space to add to the top of the art
     --art ART             Draw a specific piece of art. View all using --list
     --list                List the names of all available art pieces
     --random-color-mode, -r
                           Use a random color mode
     --ignore-distro, -i   Show distro specific artworks on all distros
     --blacklist BLACKLIST, -b BLACKLIST
                           Remove specific artworks from random pool. Note: Multiple items need to be surrounded by quotes
     --version, -V         Show version information
     --update              Try to update to the latest version
     --uninstall           Uninstall the script from your system
```

and more secret arguments that you'll just have to discover on your own!

**Note that in the 8 and 16 color modes your terminals color scheme is used, which may result in strange looking artwork
depending on the colors you have set. For the "best" visual representation, use the 256 color mode by including `--256`
in your command**

### Recommended Use Case

You can add this file to the end of your .zshrc or .bashrc to get some ASCII artwork every time you open a terminal!

# Uninstallation

To uninstall, simply:

```shell
   sudo python-colorscript --uninstall
```

# Adding New Art

Since the printing of this art is all handled by kui's amazing [ANSI Pixels](https://kui.github.io/ansi_pixels) tool,
that is how you generate the art.

1. Navigate to [ANSI Pixels](https://kui.github.io/ansi_pixels)
2. Draw the art you want displayed (keep it to a smaller resolution becuase larger images will break on smaller
   terminals)
3. Copy the like generated by the site
4. Extract the base64 portion of the link
5. Add it to the `/etc/python-colorscript/art.json` file

You can add your art to this repo by submitting a pull request with your changes.

# Credits

Almost none of this is my original work so all the credit belongs to these people:

* [Derek Taylor](https://gitlab.com/dwt1/shell-color-scripts)

* [kui](https://github.com/kui/ansi_pixels)

### Art Credits

* `creeper`: [Mojang Studios](https://www.minecraft.net/en-us)
* `blackmage`: [Square Enix](https://www.square-enix.com/)
* `questionmarkblock`: [Nintendo](https://www.nintendo.com/)
* `mushroom`: [Nintendo](https://www.nintendo.com/)
* `greenmushroom`: [Nintendo](https://www.nintendo.com/)
* `sus`: [Innersloth](https://innersloth.com/)
* `bunny`: [Re-Logic](https://re-logic.com/)
* `egg`: [Nintendo](https://www.nintendo.com/)
* `menacing`: [Araki Hirohiko](https://jojo.fandom.com/wiki/Hirohiko_Araki)
* `skull`: [Stock Unlimited](https://www.stockunlimited.com/vector-illustration/pixel-art-gaming-skull-head_2022273.html) 
