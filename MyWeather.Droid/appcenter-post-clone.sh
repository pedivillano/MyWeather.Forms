#!/usr/bin/env bash
echo "huimeng123"
echo $APPCENTER_SOURCE_DIRECTORY
SLN_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.Forms/MyWeather.sln
ANDROID_CSPROJ_FILE=$APPCENTER_SOURCE_DIRECTORY/MyWeather.Forms/MyWeather.iOS/MyWeather.iOS.csproj
dotnet sln $SLN_FILE remove $ANDROID_CSPROJ_FILE
