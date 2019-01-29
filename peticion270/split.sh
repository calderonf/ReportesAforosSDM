#!bin/bash

VIDEO=ZONAT_20181222161650_KR9CL81
VIDEOOUT=ZONAT_20181222170000_KR9CL81

# Rename all *.mp4 to *.MP4
for f in *.mp4; do 
    mv -- "$f" "${f%.mp4}.MP4"
done

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:43:09 -t $DURATION $VIDEOOUT.MP4
