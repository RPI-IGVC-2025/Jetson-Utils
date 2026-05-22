# Docker Utilities

## ROS2 Jazzy L4T Image
* 1-1 copy of the official ros:jazzy image, just with ubuntu switched out for l4t_base

Dependencies:

`echo "xhost +" >> ~/.bashrc`

Building the image: 

```
$ chmod +x ./build-images.sh
$ ./build-images.sh -v {your_l4t_version}
```
- Args
    - L4T_VER: The version of L4T being ran by the target jetson. Easily findable with `dpkg-query --show nvidia-l4t-core`

