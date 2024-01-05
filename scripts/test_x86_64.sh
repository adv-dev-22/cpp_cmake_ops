#!/bin/bash

echo "------------------ Test x86_64 Started ------------------"

SRC_PATH=$WORKSPACE
docker run --rm --name img_run_x86_64_12 -v $SRC_PATH:/app/src ubuntu_x86_84:v12 \
    "cd /app/src/build-x86_64 && cmake --build . --target test > results_test_$BUILD_NUMBER.txt"
less $SRC_PATH/build-x86_64/results_test_$BUILD_NUMBER.txt

echo "------------------ Test x86_64 Finished ------------------"
