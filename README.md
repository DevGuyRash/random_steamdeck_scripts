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

A file will also be generated showing the found apps and their ids in:
`/home/deck/shortcuts/app_ids.txt`

# Examples

## Running The Script

```shell
>>chmod +x ./create_links.sh
>>./create_links.sh
Created compatdata shortcut in /home/deck/shortcuts/compatdata

Shortcuts were created for the following apps:
App Name: Fall Guys | App ID: 1097150
/home/deck/shortcuts/Fall Guys
/home/deck/.local/share/Steam/steamapps/compatdata/Fall Guys
App Name: The Sims™ 4 | App ID: 1222670
/home/deck/shortcuts/The Sims™ 4
/home/deck/.local/share/Steam/steamapps/compatdata/The Sims™ 4
App Name: Need for Speed™ Heat | App ID: 1222680
/home/deck/shortcuts/Need for Speed™ Heat
/home/deck/.local/share/Steam/steamapps/compatdata/Need for Speed™ Heat
App Name: Virtual Cottage | App ID: 1369320
/home/deck/shortcuts/Virtual Cottage
/home/deck/.local/share/Steam/steamapps/compatdata/Virtual Cottage
App Name: Proton Experimental | App ID: 1493710
/home/deck/shortcuts/Proton Experimental
/home/deck/.local/share/Steam/steamapps/compatdata/Proton Experimental
App Name: Proton 7.0 | App ID: 1887720
/home/deck/shortcuts/Proton 7.0
/home/deck/.local/share/Steam/steamapps/compatdata/Proton 7.0
App Name: The Witcher 3: Wild Hunt | App ID: 292030
/home/deck/shortcuts/The Witcher 3: Wild Hunt
/home/deck/.local/share/Steam/steamapps/compatdata/The Witcher 3: Wild Hunt
App Name: Monster Hunter: World | App ID: 582010
/home/deck/shortcuts/Monster Hunter: World
/home/deck/.local/share/Steam/steamapps/compatdata/Monster Hunter: World
App Name: Okami HD | App ID: 587620
/home/deck/shortcuts/Okami HD
/home/deck/.local/share/Steam/steamapps/compatdata/Okami HD
App Name: Moving Out | App ID: 996770
/home/deck/shortcuts/Moving Out
/home/deck/.local/share/Steam/steamapps/compatdata/Moving Out

The following apps did not have a corresponding folder:
App Name: Steam Linux Runtime | App ID: 1070560
App Name: Unpacking | App ID: 1135690
App Name: Steam Linux Runtime - Soldier | App ID: 1391110
App Name: Proton EasyAntiCheat Runtime | App ID: 1826330
App Name: Steamworks Common Redistributables | App ID: 228980
App Name: Stardew Valley | App ID: 413150
```
## The App ID File

Found in `~/shortcuts/app_ids.txt`

```shell
App Name: Steam Linux Runtime | App ID: 1070560 | (Does Not Have a Folder)
App Name: Fall Guys | App ID: 1097150 | /home/deck/.local/share/Steam/steamapps/compatdata/1097150
App Name: Unpacking | App ID: 1135690 | (Does Not Have a Folder)
App Name: The Sims™ 4 | App ID: 1222670 | /home/deck/.local/share/Steam/steamapps/compatdata/1222670
App Name: Need for Speed™ Heat  | App ID: 1222680 | /home/deck/.local/share/Steam/steamapps/compatdata/1222680
App Name: Virtual Cottage | App ID: 1369320 | /home/deck/.local/share/Steam/steamapps/compatdata/1369320
App Name: Steam Linux Runtime - Soldier | App ID: 1391110 | (Does Not Have a Folder)
App Name: Proton Experimental | App ID: 1493710 | /home/deck/.local/share/Steam/steamapps/compatdata/1493710
App Name: Proton EasyAntiCheat Runtime | App ID: 1826330 | (Does Not Have a Folder)
App Name: Proton 7.0 | App ID: 1887720 | /home/deck/.local/share/Steam/steamapps/compatdata/1887720
App Name: Steamworks Common Redistributables | App ID: 228980 | (Does Not Have a Folder)
App Name: The Witcher 3: Wild Hunt | App ID: 292030 | /home/deck/.local/share/Steam/steamapps/compatdata/292030
App Name: Stardew Valley | App ID: 413150 | (Does Not Have a Folder)
App Name: Monster Hunter: World | App ID: 582010 | /home/deck/.local/share/Steam/steamapps/compatdata/582010
App Name: Okami HD | App ID: 587620 | /home/deck/.local/share/Steam/steamapps/compatdata/587620
App Name: Moving Out | App ID: 996770 | /home/deck/.local/share/Steam/steamapps/compatdata/996770
```

## The New Compatdata folder
```shell
>>ls -l ~/shorcuts/compatdata/
total 72
drwxr-xr-x 3 deck deck 4096 Sep 10 13:29  0
drwxr-xr-x 3 deck deck 4096 Oct 19 19:44  1064610
drwxr-xr-x 3 deck deck 4096 Oct 29 14:41  1097150
drwxr-xr-x 3 deck deck 4096 Oct 29 14:41  1222670
drwxr-xr-x 4 deck deck 4096 Oct 29 14:41  1222680
drwxr-xr-x 2 deck deck 4096 Oct 29 22:33  1369320
drwxr-xr-x 3 deck deck 4096 Oct 29 14:41  1493710
drwxr-xr-x 3 deck deck 4096 Oct 29 14:41  1887720
drwxr-xr-x 3 deck deck 4096 Oct 27 15:47  2268250065
drwxr-xr-x 3 deck deck 4096 Oct 27 12:08  2620560381
drwxr-xr-x 3 deck deck 4096 Sep 29 01:29  265930
drwxr-xr-x 3 deck deck 4096 Sep 11 10:27  2854526135
drwxr-xr-x 3 deck deck 4096 Oct 29 14:41  292030
drwxr-xr-x 3 deck deck 4096 Oct 26 07:45  359840
drwxr-xr-x 4 deck deck 4096 Oct 29 14:41  582010
drwxr-xr-x 3 deck deck 4096 Oct 29 14:41  587620
drwxr-xr-x 4 deck deck 4096 Oct 29 14:41  996770
lrwxrwxrwx 1 deck deck   58 Oct 29 22:33 'Fall Guys' -> /home/deck/.local/share/Steam/steamapps/compatdata/1097150
lrwxrwxrwx 1 deck deck   57 Oct 29 22:33 'Monster Hunter: World' -> /home/deck/.local/share/Steam/steamapps/compatdata/582010
lrwxrwxrwx 1 deck deck   57 Oct 29 22:33 'Moving Out' -> /home/deck/.local/share/Steam/steamapps/compatdata/996770
lrwxrwxrwx 1 deck deck   58 Oct 29 22:33 'Need for Speed™ Heat ' -> /home/deck/.local/share/Steam/steamapps/compatdata/1222680
lrwxrwxrwx 1 deck deck   57 Oct 29 22:33 'Okami HD' -> /home/deck/.local/share/Steam/steamapps/compatdata/587620
lrwxrwxrwx 1 deck deck   58 Oct 29 22:33 'Proton 7.0' -> /home/deck/.local/share/Steam/steamapps/compatdata/1887720
lrwxrwxrwx 1 deck deck   58 Oct 29 22:33 'Proton Experimental' -> /home/deck/.local/share/Steam/steamapps/compatdata/1493710
lrwxrwxrwx 1 deck deck   58 Oct 29 22:33 'The Sims™ 4' -> /home/deck/.local/share/Steam/steamapps/compatdata/1222670
lrwxrwxrwx 1 deck deck   57 Oct 29 22:33 'The Witcher 3: Wild Hunt' -> /home/deck/.local/share/Steam/steamapps/compatdata/292030
lrwxrwxrwx 1 deck deck   58 Oct 29 22:33 'Virtual Cottage' -> /home/deck/.local/share/Steam/steamapps/compatdata/1369320
```

## The Shortcuts Folder

```shell
total 4
-rw-r--r-- 1 deck deck 1512 Oct 29 22:34  app_ids.txt
lrwxrwxrwx 1 deck deck   50 Oct 29 22:34  compatdata -> /home/deck/.local/share/Steam/steamapps/compatdata
lrwxrwxrwx 1 deck deck   58 Oct 29 22:34 'Fall Guys' -> /home/deck/.local/share/Steam/steamapps/compatdata/1097150
lrwxrwxrwx 1 deck deck   57 Oct 29 22:34 'Monster Hunter: World' -> /home/deck/.local/share/Steam/steamapps/compatdata/582010
lrwxrwxrwx 1 deck deck   57 Oct 29 22:34 'Moving Out' -> /home/deck/.local/share/Steam/steamapps/compatdata/996770
lrwxrwxrwx 1 deck deck   58 Oct 29 22:34 'Need for Speed™ Heat ' -> /home/deck/.local/share/Steam/steamapps/compatdata/1222680
lrwxrwxrwx 1 deck deck   57 Oct 29 22:34 'Okami HD' -> /home/deck/.local/share/Steam/steamapps/compatdata/587620
lrwxrwxrwx 1 deck deck   58 Oct 29 22:34 'Proton 7.0' -> /home/deck/.local/share/Steam/steamapps/compatdata/1887720
lrwxrwxrwx 1 deck deck   58 Oct 29 22:34 'Proton Experimental' -> /home/deck/.local/share/Steam/steamapps/compatdata/1493710
lrwxrwxrwx 1 deck deck   58 Oct 29 22:34 'The Sims™ 4' -> /home/deck/.local/share/Steam/steamapps/compatdata/1222670
lrwxrwxrwx 1 deck deck   57 Oct 29 22:34 'The Witcher 3: Wild Hunt' -> /home/deck/.local/share/Steam/steamapps/compatdata/292030
lrwxrwxrwx 1 deck deck   58 Oct 29 22:34 'Virtual Cottage' -> /home/deck/.local/share/Steam/steamapps/compatdata/1369320
```