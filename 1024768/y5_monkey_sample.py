import os
from random import *
swipe = ["adb -s 192.168.43.62 shell input swipe 250 50 0 50",
         "adb -s 192.168.43.62 shell input swipe 0 50 250 50"
        ]
for i in range(0, randint(0, 1000)):
    swipe.append(swipe[randint(0, 1)])

for i in swipe:
    os.system('{0:s}'.format(i))#os.system('{0:s} && {1:s}'.format(swipe[0], swipe[1]))