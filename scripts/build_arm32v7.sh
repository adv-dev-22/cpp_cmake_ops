#!/bin/bash

echo "------------------ Build arm32v7 Started ------------------"

SRC_PATH=$WORKSPACE
mkdir build-arm32v7
docker run --rm --name img_run_arm32v7_01 -v $SRC_PATH:/app/src \
    -v $REPO_UTILS_PATH/cpp_cmake_ops/cmake-configs:/cmake-toolchain ubuntu_arm32v7:v01 \
    "cd /app/src/build-arm32v7 && \
     cmake -DCMAKE_TOOLCHAIN_FILE=/cmake-toolchain/toolchain_arm32v7.cmake .. && cmake --build ."
ls build-arm32v7/libtiff

echo "------------------ Build arm32v7 Finished ------------------"