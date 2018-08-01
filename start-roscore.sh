#!/bin/bash

set -e

echo "-----------------"
echo "Starting ROS Core"
echo "-----------------"
/opt/ros/kinetic/bin/roscore &
echo "Please wait 5 seconds..."
sleep 5