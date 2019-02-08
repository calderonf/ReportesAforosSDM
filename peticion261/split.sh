#!bin/bash

VIDEO=USAQU_20181215105643_K6CL117
VIDEOOUT=USAQU_20181215110000_K6CL117

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:03:17 -t $DURATION $VIDEOOUT.MP4
