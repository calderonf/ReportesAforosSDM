ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 USAQU_20181215105828_KR6CL121.MP4
ffmpeg -i USAQU_20181215105828_KR6CL121.MP4 -vcodec copy -an -ss 00:01:32 -t 3960.523233 USAQU_20181215100000_KR6CL121.MP4
