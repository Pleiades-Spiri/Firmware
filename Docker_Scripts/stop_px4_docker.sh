#!/bin/bash
# This script stops the docker container with the px4 toolchain, ROS Kinetic and Ubuntu 16.04
# 
# Developed by Yoshua Nava (yoshua.nava.chocron@gmail.com), for Pleiades Robotics Inc.
# 
# 

source common_vars.sh

docker stop $container_name


# nvidia-docker stop $container_name