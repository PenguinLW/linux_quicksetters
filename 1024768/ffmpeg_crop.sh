#"crop=crop_w:crop_h:crop_x:crop_y"
ffmpeg -ss 00:00:05 -t 00:00:33 -i in.mp4 -vf "crop=300:450:800:250" out.mp4
ffmpeg -i *.mkv -vf "crop=600:800:650:250" out.mkv
ffmpeg -i *.mkv -vf "crop=600:800:650:250" out.mp4
ffmpeg -i *.mkv -vf "crop=750:950:650:100" out.mp4
