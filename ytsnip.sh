#!/bin/bash
#This script rips audio from youtube
#output should be .mp3
url=$1
time1=$2
time2=$3
output=$4
echo "Extracting from URL: $url"
echo "from $time1 to $time2"
echo "saving output to /media/Data/samples/$output"

vstream=$(youtube-dl -g $url | head -n 1)
astream=$(youtube-dl -g $url | tail -n 1)
#echo $astream
#echo $vstream
ffmpeg -i $vstream -i $astream -ss $time1 -to $time2 -map 0:v -map 1:a -c:v libx264 -c:a libmp3lame /media/Data/samples/$output.mkv



