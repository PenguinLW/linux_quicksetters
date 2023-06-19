#!/bin/bash
ulimit -Sv 7000000 #5000000
./exatorrent*linux*

#ps -ax | grep exatorrent-linux-amd64 #ps -axuef exatorrent
#killall exatorrent-linux-amd64
