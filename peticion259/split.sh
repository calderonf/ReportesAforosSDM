#!bin/bash

VIDEO=USAQU_20181215102410_KR7CL119B
VIDEOOUT=USAQU_20181215110000_KR7CL119B

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:35:49 -t $DURATION $VIDEOOUT.MP4
