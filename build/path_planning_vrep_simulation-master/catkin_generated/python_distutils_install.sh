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

echo_and_run cd "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/konst/path_planning_vrep_simulation/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/konst/path_planning_vrep_simulation/install/lib/python2.7/dist-packages:/home/konst/path_planning_vrep_simulation/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/konst/path_planning_vrep_simulation/build" \
    "/usr/bin/python2" \
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/setup.py" \
    build --build-base "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/konst/path_planning_vrep_simulation/install" --install-scripts="/home/konst/path_planning_vrep_simulation/install/bin"
