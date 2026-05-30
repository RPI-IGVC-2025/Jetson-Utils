# This is a build script instead of one long dockerfile because I like having roughly the same inheritance pipeline
# as the normal images.

docker build -t ros2-l4t:humble-core humble-core/ &&
echo Building humble-core complete! &&
docker build -t ros2-l4t:humble humble &&
echo Building humble complete! &&
docker build -t ros2-l4t:humble-zed humble-zed &&
echo Building humble-zed complete! &&
echo Image build complete!
