# Scripts To Make The Steamdeck Easier

I'll be adding more and more as I have time, but also feel free to contribute 
any useful scripts you have so we can create an entire repo dedicated to it.

# Installation

1. Download or copy [create_links.sh script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/create_links.sh) to anywhere
2. Change permissions of the script using `chmod +x <filename>`

# Usage

1. Run the script

A new folder will be generated at `~/shortcuts` and all symlinks will be stored
there as well as in `/home/deck/.local/share/Steam/steamapps/compatdata`.

The symlinks skip straight to the `drive_c` portion: 
`/home/deck/.local/share/Steam/steamapps/compatdata/<app_id>/pfx/drive_c`

A file will also be generated showing the found apps and their ids in:
`/home/deck/shortcuts/app_ids.txt`
