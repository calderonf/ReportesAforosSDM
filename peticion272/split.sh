#!bin/bash

VIDEO=ZONAG_20181221103716_KR4CL65
VIDEOOUT=ZONAG_20181221110000_KR4CL65

# Rename all *.mp4 to *.MP4
for f in *.mp4; do 
    mv -- "$f" "${f%.mp4}.MP4"
done

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:22:42 -t $DURATION $VIDEOOUT.MP4
