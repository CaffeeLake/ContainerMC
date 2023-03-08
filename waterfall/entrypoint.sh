#!/usr/bin/env sh

set -e

if [ -v $XMS ]; then
  XMS=512M
fi

if [ -v $XMX ]; then
  XMX=512M
fi

# https://docs.papermc.io/waterfall/getting-started#running-the-proxy
java -Xms${XMS} -Xmx${XMX} -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -jar /bin/waterfall.jar

exit
