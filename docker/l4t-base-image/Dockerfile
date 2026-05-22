FROM arm64v8/ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive
ARG RELEASE=r36.2

ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all

COPY jetson-ota-public.key /etc/jetson-ota-public.key

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gnupg2 \
        ca-certificates && \
    apt-key add /etc/jetson-ota-public.key && \
    echo "deb https://repo.download.nvidia.com/jetson/common ${RELEASE} main" \
        >> /etc/apt/sources.list && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        bc \
        bzip2 \
        can-utils \
        ca-certificates \
        freeglut3-dev \
        gnupg2 \
        gstreamer1.0-alsa \
        gstreamer1.0-libav \
        gstreamer1.0-plugins-bad \
        gstreamer1.0-plugins-base \
        gstreamer1.0-plugins-good \
        gstreamer1.0-plugins-ugly \
        gstreamer1.0-tools \
        i2c-tools \
        iw \
        kbd \
        kmod \
        language-pack-en-base \
        libapt-pkg-dev \
        libcanberra-gtk3-module \
        libgles2 \
        libglu1-mesa-dev \
        libglvnd-dev \
        libgtk-3-0 \
        libudev1 \
        libvulkan1 \
        libzmq5 \
        mtd-utils \
        parted \
        pciutils \
        python3 \
        python3-setuptools \
        python3-pexpect \
        python3-numpy \
        sox \
        udev \
        vulkan-tools \
        wget \
        wireless-tools \
        wpasupplicant && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean


RUN echo "/usr/lib/aarch64-linux-gnu/tegra" \
        >> /etc/ld.so.conf.d/nvidia-tegra.conf && \
    echo "/usr/lib/aarch64-linux-gnu/tegra-egl" \
        >> /etc/ld.so.conf.d/nvidia-tegra.conf

RUN rm -f /usr/share/glvnd/egl_vendor.d/50_mesa.json && \
    mkdir -p /usr/share/glvnd/egl_vendor.d/ && \
    echo '{ \
        "file_format_version" : "1.0.0", \
        "ICD" : { \
            "library_path" : "libEGL_nvidia.so.0" \
        } \
    }' > /usr/share/glvnd/egl_vendor.d/10_nvidia.json

RUN mkdir -p /usr/share/egl/egl_external_platform.d/ && \
    echo '{ \
        "file_format_version" : "1.0.0", \
        "ICD" : { \
            "library_path" : "libnvidia-egl-wayland.so.1" \
        } \
    }' > /usr/share/egl/egl_external_platform.d/nvidia_wayland.json

RUN ldconfig

CMD ["/bin/bash"]