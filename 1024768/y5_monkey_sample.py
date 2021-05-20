import os
swipe = ["adb -s 192.168.43.62 shell input swipe 250 50 0 50",
         "adb -s 192.168.43.62 shell input swipe 0 50 250 50"
        ] 

os.system('{0:s} && {1:s}'.format(swipe[0], swipe[1])
