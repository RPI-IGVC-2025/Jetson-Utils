FROM ros2-l4t:humble-core

# Sourced from https://hub.docker.com/layers/library/ros/humble/images/sha256-40578722c01a48be989affce0bfdeeaccdf2396287ea0d5ab5a7841956698364

RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
RUN apt-get update && apt-get install -y --no-install-recommends     ros-humble-ros-base=0.10.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit