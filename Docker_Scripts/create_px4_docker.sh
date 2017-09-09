#!/bin/bash
# This script creates a docker container with the px4 toolchain, ROS Kinetic and Ubuntu 16.04
# 
# Developed by Yoshua Nava (KTH Royal Institute of Technology), for Pleiades Robotics Inc.
# 
# NOTE #1: You can set up the password of the user "user" employing the command "sudo passwd user", after login as root (rootexec_px4_docker.sh)
# NOTE #2: To run ROS inside the container, you should run the following command as a regular user: echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc

source common_vars.sh

echo 'local_src='$local_src
echo 'container_src='$container_src


xhost +


docker run -it --privileged \
	       -v $local_src:$container_src:rw \
     	   -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		   -e DISPLAY=:0 \
 		   -p 14556:14556/udp \
 		   --name=$container_name px4io/px4-dev-ros bash



# nvidia-docker run -it --privileged \
# 	       -v $local_src:$container_src:rw \
#      	   -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
# 		   -e DISPLAY=:0 \
#  		   -p 14556:14556/udp \
#  		   --name=$container_name px4io/px4-dev-ros bash