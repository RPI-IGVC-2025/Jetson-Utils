ls /usr/lib | grep libopencv | sudo bash -c "sed 's/^/lib, /' > /etc/nvidia-container-runtime/host-files-for-container.d/cv.csv"
