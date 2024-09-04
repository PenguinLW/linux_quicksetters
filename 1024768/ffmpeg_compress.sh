#!/bin/bash
ffmpeg -i *.mp4 -vcodec libx265 -crf 28 out.mp4
