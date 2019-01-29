#!bin/bash

VIDEO=ZONAT_20181222163046_AC85KR13
VIDEOOUT=ZONAT_20181222150000_AC85KR13

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:29:13 -t $DURATION $VIDEOOUT.MP4
