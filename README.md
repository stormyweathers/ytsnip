# ytsnip
This is a simple script that allows you to download slices from youtube videos.
youtube-dl doesnt include this feature, but I wanted it for something.
This is just a wrapper for youtube-dl and ffmpeg.

###   For video and audio:

   ytsnip.sh URL Start_Time End_Time OUTPUT
   
###   For audio only:
   ytsnip_audio.sh URL Start_Time End_Time OUTPUT
   
### timestamps formatted as
   hh:mm:ss or mm:ss
   
## Example:

ytsnip_audio.sh https://www.youtube.com/watch?v=DXmngpprhVY   1:50 1:58 rusty

#### Notes:
* Curently, the audio script outputs in mp3 format, and the video script outputs in mkv format.
 
* The output directory is hardcoded in both scripts, so you should change that to suit your needs.
