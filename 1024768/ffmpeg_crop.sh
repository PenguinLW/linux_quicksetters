#"crop=crop_w:crop_h:crop_x:crop_y"
ffmpeg -ss 00:00:05 -t 00:00:33 -i in.mp4 -vf "crop=300:450:800:250" out.mp4
ffmpeg -i *.mkv -vf "crop=600:800:750:200" out.mkv
