#!/usr/bin/env bash

# Set directory variables
base_dir="/home/deck/.local/share/Steam/steamapps"
app_mani_dir="${base_dir}/appmanifest*.acf"
compat_dir="${base_dir}/compatdata"
shortcuts_directory="/home/deck/shortcuts"

# If shortcuts folder doesn't exist, create it
[[ -d $shortcuts_directory ]] || mkdir -p $shortcuts_directory

# Create compatdata shortcut
[[ -h "$shortcuts_directory/compatdata" ]] || ln -s ${compat_dir} "$shortcuts_directory/compatdata";echo "Created compatdata shortcut in $shortcuts_directory/compatdata"

# Create empty App ID file
cat /dev/null > "$shortcuts_directory/app_ids.txt"

declare -a invalid_apps=()
declare -a valid_apps=()

for file in $(ls ${app_mani_dir})
do
	# Extract app id and name from appmanifest files
        app_id=$(grep '"appid"' $file | cut -d'"' -f4)
        app_name=$(grep '"name"' $file | cut -d'"' -f4)

	# Set drive_c directories
	app_dir="${compat_dir}/$app_id"


	# Check that the corresponding app folder exists. If so, create the shortcuts.
	if [[ -d "$app_dir" ]]
	then
		echo "App Name: $app_name | App ID: $app_id | $compat_dir/$app_id" | tee >> "$shortcuts_directory/app_ids.txt"
		ln -sf ${app_dir} "$shortcuts_directory/$app_name"
		ln -sf ${app_dir} "$compat_dir/$app_name"

		# Add app to list of successfully symlinked apps
		valid_apps+=("App Name: $app_name | App ID: $app_id" "$shortcuts_directory/$app_name" "$compat_dir/$app_name")
	else
		# Add app to list of unsuccessfully symlinked apps
		echo "App Name: $app_name | App ID: $app_id | (Does Not Have a Folder)" >> "$shortcuts_directory/app_ids.txt"
		invalid_apps+=("App Name: ${app_name} | App ID: ${app_id}")
	fi
done

# Spacers
echo
echo

# List all apps that shortcuts were successfully created for.
if [[ ${#valid_apps[@]} -eq 0 ]]
then
	echo "Failed to create any symlinks."
	exit 0
else
	echo "Shortcuts were created for the following apps:"
	for ((i=1;i<${#valid_apps[@]};i++))
	do
		echo ${valid_apps[$i]}
	done
fi

# Spacers
echo
echo


# List all apps that did not have a folder in the compatdat folder.
if [[ ${#invalid_apps[@]} -eq 0 ]]
then
	echo "Operation completed with no errors."
	exit 0
else
	echo "The following apps did not have a corresponding folder:"
	for ((i=1;i<${#invalid_apps[@]};i++))
	do
		echo ${invalid_apps[$i]}
	done
fi
