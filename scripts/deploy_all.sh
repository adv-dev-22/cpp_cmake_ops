#!/bin/bash

echo "------------------ Deploy Started ------------------"

SRC_PATH=$WORKSPACE
scp -o StrictHostKeyChecking=no $SRC_PATH/build-x86_64/libtiff/libtiff.so \
    $DEPLOY_USER_VM2@$IP_UBUNTU_DEPLOY:/home/$DEPLOY_USER_VM2/deploy/build-x86_64/libs_out/libtiff_$BUILD_NUMBER.so
scp -o StrictHostKeyChecking=no $SRC_PATH/build-arm32v7/libtiff/libtiff.so \
    $DEPLOY_USER_VM2@$IP_UBUNTU_DEPLOY:/home/$DEPLOY_USER_VM2/deploy/build-arm32v7/libs_out/libtiff_$BUILD_NUMBER.so

echo "------------------ Deploy Finished ------------------"