#!/usr/bin/env sh

set -e

if [ -v $XMS ]; then
  XMS=1G
fi

if [ -v $XMX ]; then
  XMX=1G
fi

# https://docs.papermc.io/velocity/getting-started#launching-velocity-under-macos-or-linux
java -Xms${XMS} -Xmx${XMX} -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar /bin/velocity.jar

exit
