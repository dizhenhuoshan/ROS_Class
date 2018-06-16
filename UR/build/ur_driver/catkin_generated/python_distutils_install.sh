#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/wymt/c++/ROS/UR/src/ur_driver"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wymt/c++/ROS/UR/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wymt/c++/ROS/UR/install/lib/python2.7/dist-packages:/home/wymt/c++/ROS/UR/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wymt/c++/ROS/UR/build" \
    "/usr/bin/python" \
    "/home/wymt/c++/ROS/UR/src/ur_driver/setup.py" \
    build --build-base "/home/wymt/c++/ROS/UR/build/ur_driver" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/wymt/c++/ROS/UR/install" --install-scripts="/home/wymt/c++/ROS/UR/install/bin"
