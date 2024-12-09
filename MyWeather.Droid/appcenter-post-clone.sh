#!/usr/bin/env bash
set -e
echo "huimeng123"
echo $APPCENTER_SOURCE_DIRECTORY
SLN_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.sln
WINDOWS_CSPROJ_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.UWP/MyWeather.UWP.csproj
dotnet sln $SLN_FILE remove $WINDOWS_CSPROJ_FILE
 
export RemoveIOSProjects=true
 
SLN_PATH=$(find "$APPCENTER_SOURCE_DIRECTORY" -iname '*.sln' -type f -print0)
 
if [ -z "$SLN_PATH" ]; then
echo "No Solution Found. Exiting Script."
exit
else
echo "SLN_PATH = $SLN_PATH"
fi
 
 
if [ -z "$RemoveIOSProjects" ]; then
echo "Do Not Remove iOS Projects"
else
echo "Searching for iOS Projects"
IOS_PATHS=$(find "$APPCENTER_SOURCE_DIRECTORY" -iname '*iOS*.csproj' -type f -print0)
 
 
if [ -z "$IOS_PATHS" ]; then
echo "No iOS CSPROJ files found. No Action taken."
else
echo "hello line31"
echo "IOS_PATHS = $IOS_PATHS"
echo "hello line33"
for p in "$IOS_PATHS"; do
  echo "Removing $p from $SLN_PATH" || true
  dotnet sln $SLN_PATH remove $p || true
done
fi
fi
 

export PATH=$PATH:$HOME/Library/Android/sdk/cmdline-tools/latest/bin

 

echo "Installing missing SDK platforms"

 

sdkmanager "platforms;android-27" "platforms;android-28" "platforms;android-29" "platforms;android-30"

 

echo "Missing SDK platforms installed. Installing missing build tools."

 

sdkmanager "build-tools;27.0.0" "build-tools;27.0.1" "build-tools;27.0.2" "build-tools;27.0.3" "build-tools;28.0.0" "build-tools;28.0.1" "build-tools;28.0.2" "build-tools;28.0.3" "build-tools;29.0.0" "build-tools;29.0.1" "build-tools;29.0.2" "build-tools;29.0.3" "build-tools;30.0.0" "build-tools;30.0.1" "build-tools;30.0.2" "build-tools;30.0.3"
