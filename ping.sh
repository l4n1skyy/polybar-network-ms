#!/bin/bash

### AUTHOR:         Lanisha (github: l4n1skyy)
### PROJECT REPO:   https://github.com/l4n1skyy/polybar-network-ms

while true
do
    speed_test=$(ping 8.8.8.8 -w 3 | grep rtt)
    # echo $speed_test
    readarray -d "/" speed < <(echo $speed_test)
    echo ${speed[5]%/*} ms
done
