FROM ros2-l4t:humble

ENV LOGNAME root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y || true ; apt-get install --no-install-recommends lsb-release wget less zstd udev sudo apt-transport-https -y && \
    echo "# R36 (release), REVISION: 5.0" ; \
    wget -q --no-check-certificate -O ZED_SDK_Linux.run https://download.stereolabs.com/zedsdk/5.2/l4t36.5/jetsons && \
    chmod +x ZED_SDK_Linux.run ; ./ZED_SDK_Linux.run silent skip_drivers && \
    rm -rf /usr/local/zed/resources/* \
    rm -rf ZED_SDK_Linux.run && \
    rm -rf /var/lib/apt/lists/*

#This symbolic link is needed to use the streaming features on Jetson inside a container
RUN ln -sf /usr/lib/aarch64-linux-gnu/tegra/libv4l2.so.0 /usr/lib/aarch64-linux-gnu/libv4l2.so