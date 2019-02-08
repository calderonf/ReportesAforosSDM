#!bin/bash

VIDEO=ZONAG_20181221105221_AK7CL69A
VIDEOOUT=ZONAG_20181221110000_AK7CL69A

# Rename all *.mp4 to *.MP4
for f in *.mp4; do 
    mv -- "$f" "${f%.mp4}.MP4"
done

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:07:38 -t $DURATION $VIDEOOUT.MP4
