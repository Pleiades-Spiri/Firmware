#!/bin/bash
# This script allows a user to start the px4_ros docker container
# 
# Developed by Yoshua Nava (KTH Royal Institute of Technology), for Pleiades Robotics Inc.
# 
# 


xhost +

source common_vars.sh

docker start $container_name

# nvidia-docker start $container_name