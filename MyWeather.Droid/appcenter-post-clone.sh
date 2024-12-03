#!/usr/bin/env bash
echo "huimeng123"
echo $APPCENTER_SOURCE_DIRECTORY
SLN_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.sln
IOS_CSPROJ_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.iOS/MyWeather.iOS.csproj
WINDOWS_CSPROJ_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.UWP/MyWeather.UWP.csproj
dotnet sln $SLN_FILE remove $IOS_CSPROJ_FILE
dotnet sln $SLN_FILE remove $WINDOWS_CSPROJ_FILE

