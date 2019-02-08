#!bin/bash

VIDEO   =USAQU_20181215100952_KR5CL120A
VIDEOOUT=USAQU_20181215110000_KR5CL120A

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:50:11 -t $DURATION $VIDEOOUT.MP4
