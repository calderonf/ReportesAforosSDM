#!bin/bash

VIDEO=ZONAT_20181222164558_AK15AC85
VIDEOOUT=ZONAT_20181222170000_AK15AC85

# Rename all *.mp4 to *.MP4
for f in *.mp4; do 
    mv -- "$f" "${f%.mp4}.MP4"
done

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)
ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:14:01 -t $DURATION $VIDEOOUT.MP4
