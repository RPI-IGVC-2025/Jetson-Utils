#!/bin/bash

# Sourced from https://github.com/osrf/docker_images/blob/master/ros/jazzy/ubuntu/noble/ros-core/ros_entrypoint.sh

set -e

# setup ros2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash" --
exec "$@"