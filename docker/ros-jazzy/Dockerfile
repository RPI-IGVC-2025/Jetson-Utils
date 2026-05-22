FROM ros2-l4t:jazzy-core

# Sourced from https://hub.docker.com/layers/library/ros/jazzy/images/sha256-c22b11ae86c58ddc90ce067c7641f3eb501f18d7808be1afb030f3cbcbbcd94a

RUN apt-get update && apt-get install --no-install-recommends -y     build-essential     git     python3-colcon-common-extensions     python3-colcon-mixin     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/* # buildkit
RUN rosdep init &&   rosdep update --rosdistro $ROS_DISTRO # buildkit
RUN colcon mixin add default       https://raw.githubusercontent.com/colcon/colcon-mixin-repository/master/index.yaml &&     colcon mixin update &&     colcon metadata add default       https://raw.githubusercontent.com/colcon/colcon-metadata-repository/master/index.yaml &&     colcon metadata update # buildkit
RUN apt-get update && apt-get install -y --no-install-recommends     ros-jazzy-ros-base=0.11.0-1*     && rm -rf /var/lib/apt/lists/* # buildkit