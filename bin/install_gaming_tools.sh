#!/usr/bin/env bash

# Update everything first
flatpak update

# List of flatpak apps to install
app_install_list=(
  "net.davidotek.pupgui2"
  "com.heroicgameslauncher.hgl"
  "com.github.tchx84.Flatseal"
  "com.github.Matoking.protontricks"
  "com.usebottles.bottles"
  "net.lutris.Lutris"
  "io.github.philipk.boilr"
)

for ((i=0;i<${#app_install_list[@]};i++))
do
  read -rp "Would you like to install ${app_install_list[$i]}? [Y/n]: " user_choice
  # Install the app if user type 'y' or nothing.
  if [[ -z $user_choice || ${user_choice,,} = "y" ]];then
    app="${app_install_list[$i]}"
    flatpak install "$app"
    # Check that the app was successfully installed
  fi
done

# Check if proton tricks is installed and add these if so to make it work
if [[ $(flatpak search "com.github.Matoking.protontricks" 2> /dev/null | wc -l) -ne 0 ]];then
  echo "alias protontricks='flatpak run com.github.Matoking.protontricks'" >> ~/.bashrc
  echo "alias protontricks-launch='flatpak run --command=protontricks-launch com.github.Matoking.protontricks'" >> ~/.bashrc
fi

# Install decky
read -rp "Would you like to install Decky? [Y/n]: " user_choice
if [[ -z $user_choice || ${user_choice,,} = "y" ]];then
  curl -L "https://github.com/SteamDeckHomebrew/decky-loader/raw/main/dist/install_release.sh" | sh
  echo "Installed Decky. Please restart Steam for it to take effect."
fi

# Download emudeck
read -rp "Would you like to install Emudeck? [Y/n]: " user_choice
if [[ -z $user_choice || ${user_choice,,} = "y" ]];then
  mkdir -p /home/deck/Downloads/emudeck
  wget -cO /home/deck/Downloads/emudeck/emudeck.desktop https://www.emudeck.com/EmuDeck.desktop
fi
