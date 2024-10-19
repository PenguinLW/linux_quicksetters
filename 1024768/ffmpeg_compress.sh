#!/bin/bash
ffmpeg -i *.mp4 -vcodec libx265 -crf 28 out.mp4
ffmpeg -i *.mkv -vcodec libx265 -crf 28 out.mkv

#ffmpeg -ss 00:00:05 -t 01:22:46 -i *.mkv -vcodec libx265 -crf 28 out.mkv

##ffmpeg -ss 00:00:05 -t 00:48:00 -i 0-2024-10-14_11.18.24.mkv -vcodec libx265 -crf 28 0-2024-10-14_11.18.24_out.mkv
##ffmpeg -ss 00:01:07 -t 00:16:09 -i 0-2024-10-14_12.07.04.mkv -vcodec libx265 -crf 28 0-2024-10-14_12.07.04_out.mkv
##ffmpeg -ss 00:01:15 -t 00:14:35 -i 0-2024-10-14_12.23.45.mkv -vcodec libx265 -crf 28 0-2024-10-14_12.23.45_out.mkv
