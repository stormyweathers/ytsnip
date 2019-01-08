#!/bin/bash
#This script rips audio from youtube
#output should be .mp3
url=$1
time1=$2
time2=$3
output=$4
echo "Extracting audio from URL: $url"
echo "from $time1 to $time2"
echo "saving output to /media/Data/samples/$output"
audiostream=$(youtube-dl -g $url | tail -n 1)
#echo $audiostream
ffmpeg -i $audiostream -vn -ss $time1 -to $time2 -acodec libmp3lame /media/Data/samples/$output.mp3
