#!/bin/bash

# Get the current date and time in YYYYMMDD_HHMMSS format
datetime=$(date +"%Y%m%d_%H%M%S")

# Open Finder at desktop and allow the user to select a PNG image
echo "Please select a PNG image to resize for Android app icons"
png_file=$(osascript -e 'tell application "Finder" to ¬
    POSIX path of (choose file with prompt "Select a PNG image to resize for Android app icons" of type {"png"})')

    # prompts the user to get target to move the files to useing the osascript command
echo "Please select the react-native project directory to move the files to"
target_dir=$(osascript -e 'tell application "Finder" to ¬
   POSIX path of (choose folder with prompt "Select the react-native root directory")')

# Resize the image to Android app icon sizes using the sips command
echo "Resizing image to Android app icon sizes..."

sips -Z 48 $png_file --out $target_dir/android/app/src/main/res/mipmap-mdpi/ic_launcher.png
sips -Z 48 $png_file --out $target_dir/android/app/src/main/res/mipmap-mdpi/ic_launcher_round.png
sips -Z 72 $png_file --out $target_dir/android/app/src/main/res/mipmap-hdpi/ic_launcher.png
sips -Z 72 $png_file --out $target_dir/android/app/src/main/res/mipmap-hdpi/ic_launcher_round.png
sips -Z 96 $png_file --out $target_dir/android/app/src/main/res/mipmap-xhdpi/ic_launcher.png
sips -Z 96 $png_file --out $target_dir/android/app/src/main/res/mipmap-xhdpi/ic_launcher_round.png
sips -Z 192 $png_file --out $target_dir/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
sips -Z 192 $png_file --out $target_dir/android/app/src/main/res/mipmap-xxxhdpi/ic_launcher_round.png




# Move the resized images to the Android app icon directories
echo "Moving resized images to Android app icon directories..."


