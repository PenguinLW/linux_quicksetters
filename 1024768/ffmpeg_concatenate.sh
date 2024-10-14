
##ls *.mkv> out_list.txt
printf "file '%s'\n" *.mkv> out_list.txt
##ffmpeg -f concat -i out_list.txt output.mkv
ffmpeg -f concat -i out_list.txt -c copy output.mkv
