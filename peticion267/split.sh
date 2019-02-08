#!bin/bash

VIDEO=ZONAT_20181222160604_AK11CL82
VIDEOOUT=ZONAT_20181222170000_AK11CL82

DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)

ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:53:56 -t $DURATION $VIDEOOUT.MP4
