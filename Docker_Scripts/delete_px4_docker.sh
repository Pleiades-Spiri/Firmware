#!/bin/bash
# This script deletes the docker container with the px4 toolchain, ROS Kinetic and Ubuntu 16.04
# 
# Developed by Yoshua Nava (yoshua.nava.chocron@gmail.com), for Pleiades Robotics Inc.
# 
# 

source common_vars.sh

export image_id=$(sudo docker images | grep px4io/px4-dev-ros | awk -e '{print $3}')
export container_id=$(sudo docker ps -a | grep $container_name | awk -e '{print $1}')
docker stop $container_id
docker rm $container_id
docker rmi $image_id