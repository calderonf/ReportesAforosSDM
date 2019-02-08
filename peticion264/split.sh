#!bin/bash
VIDEO=USAQU_20181215103949_KR6CL114
VIDEOOUT=USAQU_20181215110000_KR6CL114
DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $VIDEO.MP4)
ffmpeg -i $VIDEO.MP4 -vcodec copy -an -ss 00:20:12 -t $DURATION $VIDEOOUT.MP4
