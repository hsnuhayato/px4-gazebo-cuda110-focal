#!/bin/bash
# docker build --network=host -t hsnuhayato/px4-gazebo-cuda110-focal .
xhost +si:localuser:root

docker run  -it --name px4_container --rm  --gpus all \
       -v $(pwd):/mnt --workdir=/mnt \
       --net host \
       --privileged     \
       --env="DISPLAY"  \
       -e PATH=$PATH:/usr/local/bin:/root/.local/bin \
       -e LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib \
       hsnuhayato/px4-gazebo-cuda110-focal  /bin/bash
