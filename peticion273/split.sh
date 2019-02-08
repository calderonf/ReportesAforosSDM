#!bin/bash

VIDEO=ZONAG_20181221102854_KR4CL69
VIDEOOUT=ZONAG_20181221110000_KR4CL69

# Rename all *.mp4 to *.MP4
for f in *.mp4; do 
    mv -- "$f" "${f%.mp4}.MP4"
done

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:31:05 -t $DURATION $VIDEOOUT.MP4
