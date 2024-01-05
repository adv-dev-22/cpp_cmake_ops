#!/bin/bash

echo "------------------ Build x86_64 Started ------------------"

SRC_PATH=$WORKSPACE
mkdir build-x86_64
docker run --rm --name img_run_x86_64_12 -v $SRC_PATH:/app/src ubuntu_x86_84:v12 "cd /app/src/build-x86_64 && cmake .. && cmake --build ." 
ls build-x86_64/libtiff

echo "------------------ Build x86_64 Finished ------------------"

