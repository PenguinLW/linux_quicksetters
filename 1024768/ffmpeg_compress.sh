#!/bin/bash
ffmpeg -i *.mp4 -vcodec libx265 -crf 28 out.mp4

ffmpeg -ss 00:00:05 -t 01:22:46 -vcodec libx265 -crf 28 -i *.mkv out.mkv
