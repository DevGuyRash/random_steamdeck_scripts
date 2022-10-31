# Compatdata Symlink Creator

# Installation

1. Download or copy [create_links.sh script](https://github.com/DevGuyRash/random_steamdeck_scripts/blob/main/bin/create_links.sh) to anywhere
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
Created shortcuts directory: /home/deck/shortcuts
Created compatdata shortcut: /home/deck/shortcuts/compatdata

App Name: Fall Guys | App ID: 1097150 | /home/deck/.local/share/Steam/steamapps/compatdata/1097150
App Name: The Sims™ 4 | App ID: 1222670 | /home/deck/.local/share/Steam/steamapps/compatdata/1222670
App Name: Need for Speed™ Heat  | App ID: 1222680 | /home/deck/.local/share/Steam/steamapps/compatdata/1222680
App Name: Virtual Cottage | App ID: 1369320 | /home/deck/.local/share/Steam/steamapps/compatdata/1369320
App Name: Proton Experimental | App ID: 1493710 | /home/deck/.local/share/Steam/steamapps/compatdata/1493710
App Name: Proton 7.0 | App ID: 1887720 | /home/deck/.local/share/Steam/steamapps/compatdata/1887720
App Name: The Witcher 3: Wild Hunt | App ID: 292030 | /home/deck/.local/share/Steam/steamapps/compatdata/292030
App Name: Monster Hunter: World | App ID: 582010 | /home/deck/.local/share/Steam/steamapps/compatdata/582010
App Name: Okami HD | App ID: 587620 | /home/deck/.local/share/Steam/steamapps/compatdata/587620
App Name: Moving Out | App ID: 996770 | /home/deck/.local/share/Steam/steamapps/compatdata/996770

Shortcuts were created for the following apps:
App Name: Fall Guys | App ID: 1097150
/home/deck/shortcuts/Fall Guys
/home/deck/.local/share/Steam/steamapps/compatdata/fall_guys

App Name: The Sims™ 4 | App ID: 1222670
/home/deck/shortcuts/The Sims™ 4
/home/deck/.local/share/Steam/steamapps/compatdata/the_sims™_4

App Name: Need for Speed™ Heat  | App ID: 1222680
/home/deck/shortcuts/Need for Speed™ Heat 
/home/deck/.local/share/Steam/steamapps/compatdata/need_for_speed™_heat_

App Name: Virtual Cottage | App ID: 1369320
/home/deck/shortcuts/Virtual Cottage
/home/deck/.local/share/Steam/steamapps/compatdata/virtual_cottage

App Name: Proton Experimental | App ID: 1493710
/home/deck/shortcuts/Proton Experimental
/home/deck/.local/share/Steam/steamapps/compatdata/proton_experimental

App Name: Proton 7.0 | App ID: 1887720
/home/deck/shortcuts/Proton 7.0
/home/deck/.local/share/Steam/steamapps/compatdata/proton_7.0

App Name: The Witcher 3: Wild Hunt | App ID: 292030
/home/deck/shortcuts/The Witcher 3: Wild Hunt
/home/deck/.local/share/Steam/steamapps/compatdata/the_witcher_3:_wild_hunt

App Name: Monster Hunter: World | App ID: 582010
/home/deck/shortcuts/Monster Hunter: World
/home/deck/.local/share/Steam/steamapps/compatdata/monster_hunter:_world

App Name: Okami HD | App ID: 587620
/home/deck/shortcuts/Okami HD
/home/deck/.local/share/Steam/steamapps/compatdata/okami_hd

App Name: Moving Out | App ID: 996770
/home/deck/shortcuts/Moving Out
/home/deck/.local/share/Steam/steamapps/compatdata/moving_out

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
drwxr-xr-x 3 deck deck 4096 Sep 10 13:29 0
drwxr-xr-x 3 deck deck 4096 Oct 19 19:44 1064610
drwxr-xr-x 3 deck deck 4096 Oct 31 00:29 1097150
drwxr-xr-x 3 deck deck 4096 Oct 31 00:29 1222670
drwxr-xr-x 4 deck deck 4096 Oct 31 00:29 1222680
drwxr-xr-x 2 deck deck 4096 Oct 31 00:29 1369320
drwxr-xr-x 3 deck deck 4096 Oct 31 00:29 1493710
drwxr-xr-x 3 deck deck 4096 Oct 31 00:29 1887720
drwxr-xr-x 3 deck deck 4096 Oct 27 15:47 2268250065
drwxr-xr-x 3 deck deck 4096 Oct 27 12:08 2620560381
drwxr-xr-x 3 deck deck 4096 Sep 29 01:29 265930
drwxr-xr-x 3 deck deck 4096 Sep 11 10:27 2854526135
drwxr-xr-x 3 deck deck 4096 Oct 31 00:29 292030
drwxr-xr-x 3 deck deck 4096 Oct 26 07:45 359840
drwxr-xr-x 4 deck deck 4096 Oct 31 00:29 582010
drwxr-xr-x 3 deck deck 4096 Oct 31 00:29 587620
drwxr-xr-x 4 deck deck 4096 Oct 31 00:29 996770
lrwxrwxrwx 1 deck deck   58 Oct 31 00:29 fall_guys -> /home/deck/.local/share/Steam/steamapps/compatdata/1097150
lrwxrwxrwx 1 deck deck   57 Oct 31 00:29 monster_hunter:_world -> /home/deck/.local/share/Steam/steamapps/compatdata/582010
lrwxrwxrwx 1 deck deck   57 Oct 31 00:29 moving_out -> /home/deck/.local/share/Steam/steamapps/compatdata/996770
lrwxrwxrwx 1 deck deck   58 Oct 31 00:29 need_for_speed™_heat -> /home/deck/.local/share/Steam/steamapps/compatdata/1222680
lrwxrwxrwx 1 deck deck   57 Oct 31 00:29 okami_hd -> /home/deck/.local/share/Steam/steamapps/compatdata/587620
lrwxrwxrwx 1 deck deck   58 Oct 31 00:29 proton_7.0 -> /home/deck/.local/share/Steam/steamapps/compatdata/1887720
lrwxrwxrwx 1 deck deck   58 Oct 31 00:29 proton_experimental -> /home/deck/.local/share/Steam/steamapps/compatdata/1493710
lrwxrwxrwx 1 deck deck   58 Oct 31 00:29 the_sims™_4 -> /home/deck/.local/share/Steam/steamapps/compatdata/1222670
lrwxrwxrwx 1 deck deck   57 Oct 31 00:29 the_witcher_3:_wild_hunt -> /home/deck/.local/share/Steam/steamapps/compatdata/292030
lrwxrwxrwx 1 deck deck   58 Oct 31 00:29 virtual_cottage -> /home/deck/.local/share/Steam/steamapps/compatdata/1369320
```

## The Shortcuts Folder

```shell
>>ls -l ~/shortcuts
total 4
-rw-r--r-- 1 deck deck 1512 Oct 31 00:31 app_ids.txt
lrwxrwxrwx 1 deck deck   50 Oct 31 00:31 compatdata -> /home/deck/.local/share/Steam/steamapps/compatdata
lrwxrwxrwx 1 deck deck   58 Oct 31 00:31 fall_guys -> /home/deck/.local/share/Steam/steamapps/compatdata/1097150
lrwxrwxrwx 1 deck deck   57 Oct 31 00:31 monster_hunter:_world -> /home/deck/.local/share/Steam/steamapps/compatdata/582010
lrwxrwxrwx 1 deck deck   57 Oct 31 00:31 moving_out -> /home/deck/.local/share/Steam/steamapps/compatdata/996770
lrwxrwxrwx 1 deck deck   58 Oct 31 00:31 need_for_speed™_heat -> /home/deck/.local/share/Steam/steamapps/compatdata/1222680
lrwxrwxrwx 1 deck deck   57 Oct 31 00:31 okami_hd -> /home/deck/.local/share/Steam/steamapps/compatdata/587620
lrwxrwxrwx 1 deck deck   58 Oct 31 00:31 proton_7.0 -> /home/deck/.local/share/Steam/steamapps/compatdata/1887720
lrwxrwxrwx 1 deck deck   58 Oct 31 00:31 proton_experimental -> /home/deck/.local/share/Steam/steamapps/compatdata/1493710
lrwxrwxrwx 1 deck deck   58 Oct 31 00:31 the_sims™_4 -> /home/deck/.local/share/Steam/steamapps/compatdata/1222670
lrwxrwxrwx 1 deck deck   57 Oct 31 00:31 the_witcher_3:_wild_hunt -> /home/deck/.local/share/Steam/steamapps/compatdata/292030
lrwxrwxrwx 1 deck deck   58 Oct 31 00:31 virtual_cottage -> /home/deck/.local/share/Steam/steamapps/compatdata/1369320
```
