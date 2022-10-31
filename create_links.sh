#!/usr/bin/env bash

# Removes leading/trailing whitespace, internal spaces, and converts to lowercase
function convert_text() {
  local text=$1
  # Echo removes leading/trailing whitespace, sed removes internal spaces
  text="$(echo -e "${text}" | sed -e 's/[[:space:]]/_/g')"
  # Convert to lowercase and return value
  echo -e "${text,,}"
}

# Set directory variables
base_dir="/home/deck/.local/share/Steam/steamapps"
app_mani_dir="${base_dir}/appmanifest*.acf"
compat_dir="${base_dir}/compatdata"
shortcuts_directory="/home/deck/shortcuts"

# If shortcuts folder doesn't exist, create it
if [[ ! -d $shortcuts_directory ]];then
  mkdir -p $shortcuts_directory
  echo "Created shortcuts directory: $shortcuts_directory"
fi

# Create compatdata shortcut if it doesn't already exist
if [[ ! -h "$shortcuts_directory/compatdata" ]];then
  ln -s ${compat_dir} "$shortcuts_directory/compatdata"
  echo "Created compatdata shortcut: $shortcuts_directory/compatdata"
  # Spacer
  echo
fi

# Create empty App ID file
echo "" 1> "$shortcuts_directory/app_ids.txt" 2>/dev/null

declare -a invalid_apps=()
declare -a valid_apps=()

# Verify there's appmanifest files. Exit if not.
for file in ${app_mani_dir}
do
  if [[ ! -e "$file" ]]
  then
    echo "No files exist in $app_mani_dir"
    exit 1
  fi

	# Extract app id and name from appmanifest files
  app_id=$(grep '"appid"' "$file" | cut -d'"' -f4)
  app_name=$(grep '"name"' "$file" | cut -d'"' -f4)

  # Convert spaces to underscores for symlinks
  app_name_chngd=$(convert_text "$app_name")

	# Set app directory
	app_dir="${compat_dir}/$app_id"

	# Check that the corresponding app folder exists. If so, create the shortcuts.
	if [[ -d "$app_dir" ]]
	then
		echo "App Name: $app_name | App ID: $app_id | $compat_dir/$app_id"
		echo "App Name: $app_name_chngd | App ID: $app_id | $compat_dir/$app_id" >> "$shortcuts_directory/app_ids.txt"
		ln -sf "${app_dir}" "$shortcuts_directory/$app_name_chngd"
		ln -sf "${app_dir}" "$compat_dir/$app_name_chngd"

		# Add app to list of successfully symlinked apps
		valid_apps+=("App Name: $app_name | App ID: $app_id" "$shortcuts_directory/$app_name_chngd" "$compat_dir/$app_name_chngd")
	else
		# Add app to list of unsuccessfully symlinked apps
		echo "App Name: $app_name | App ID: $app_id | (Does Not Have a Folder)" >> "$shortcuts_directory/app_ids.txt"
		invalid_apps+=("App Name: ${app_name} | App ID: ${app_id}")
	fi
done

# List all apps that shortcuts were successfully created for.
if [[ ${#valid_apps[@]} -eq 0 ]]
then
	echo "Failed to create any symlinks."
	exit 0
else
	echo "Shortcuts were created for the following apps:"
	for ((i=0;i<${#valid_apps[@]};i++))
	do
		echo "${valid_apps[$i]}"
	done
fi

# Spacer
echo

# List all apps that did not have a folder in the compatdat folder.
if [[ ${#invalid_apps[@]} -eq 0 ]]
then
	echo "Operation completed with no errors."
	exit 0
else
	echo "The following apps did not have a corresponding folder:"
	for ((i=0;i<${#invalid_apps[@]};i++))
	do
		echo "${invalid_apps[$i]}"
	done
fi
