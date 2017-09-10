#!/bin/bash
# This script allows a user to exec the px4_ros docker container as a regular user called "user"
# 
# Developed by Yoshua Nava (yoshua.nava.chocron@gmail.com), for Pleiades Robotics Inc.
# 
# 

xhost +

source common_vars.sh

docker exec -it --privileged=true \
			-u user \
 		 	-e DISPLAY=:0 \
     		$container_name bash


# nvidia-docker exec -it --privileged \
# 				   -u user \
#      			   -e DISPLAY=:0 \
#      				$container_name bash