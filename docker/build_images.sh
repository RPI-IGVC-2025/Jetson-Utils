while getopts "v:" flag; do
    case "${flag}" in
        v) cd ros-jazzy-core
           docker build --build-arg L4T_VER=${OPTARG} -t ros2-l4t:jazzy-core
           echo Building ros-jazzy-core complete!
           cd ../ros-jazzy
           docker build -t ros2-l4t:jazzy
           cd ..
           echo Building ros-jazzy complete!
           ;;
    esac
done

echo Image build complete!
