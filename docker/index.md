# Docker Utilities

## ROS2 Jazzy L4T Image
* Normal ros:jazzy pipeline: arm64v8/ubuntu:24.04-->ros:jazzy-core->ros:jazzy
* Normal nvidia/l4t pipeline: arm64v8/ubuntu:22.04-->nvcr.io/nvidia/l4t-base:r36.2.0
* Our pipeline: arm64v8/ubuntu:24.04 (Due to ROS2 Jazzy not being tier 1 supported on 22.04) --> l4t-24:r36.2.0 --> ros2-l4t:jazzy-core --> ros2-l4t:jazzy

Dependencies:

`xhost +`

`sudo chown $USER:$USER ~/.gnupg/*

Building the image(s): 

```
$ chmod +x ./build-images.sh
$ ./build-images.sh 
```

Running the image(s):
- We are using ros2-l4t:jazzy as the base for a devcontainer. Check out our 2026RobotCode repo for that.
- To run any of them standalone: `sudo docker run -it --rm --net=host --runtime nvidia -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix **Image id**`

