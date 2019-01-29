#!bin/bash

VIDEO=USAQU_20181215101555_KR6CL119B
VIDEOOUT=USAQU_20181215110000_KR6CL119B

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:44:32 -t $DURATION $VIDEOOUT.MP4
