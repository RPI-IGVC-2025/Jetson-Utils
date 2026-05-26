# This is a build script instead of one long dockerfile because I like having roughly the same inheritance pipeline
# as the normal images.

docker build -t l4t-24:r36.2.0 l4t-base-image/ &&
echo Building l4t complete! &&
docker build -t ros2-l4t:jazzy-core ros-jazzy-core/ &&
echo Building ros-jazzy-core complete! &&
docker build -t ros2-l4t:jazzy ros-jazzy &&
echo Building ros-jazzy complete! &&
echo Image build complete!
