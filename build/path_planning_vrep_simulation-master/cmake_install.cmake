# Install script for directory: /home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/konst/path_planning_vrep_simulation/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_planning_vrep_simulation/msg" TYPE FILE FILES
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/Point2d.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/MarkerData.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/RobotData.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/GoalData.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/ObstacleData.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/FieldObjects.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/Path.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/AllPathes.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/RobotMovement.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/XML_PATH.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/Step.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/WheelRotationData.msg"
    "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/msg/All_XML_PATHS.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_planning_vrep_simulation/cmake" TYPE FILE FILES "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/installspace/path_planning_vrep_simulation-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/konst/path_planning_vrep_simulation/devel/include/path_planning_vrep_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/konst/path_planning_vrep_simulation/devel/share/roseus/ros/path_planning_vrep_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/konst/path_planning_vrep_simulation/devel/share/common-lisp/ros/path_planning_vrep_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/konst/path_planning_vrep_simulation/devel/share/gennodejs/ros/path_planning_vrep_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/konst/path_planning_vrep_simulation/devel/lib/python2.7/dist-packages/path_planning_vrep_simulation")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/konst/path_planning_vrep_simulation/devel/lib/python2.7/dist-packages/path_planning_vrep_simulation" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/konst/path_planning_vrep_simulation/devel/lib/python2.7/dist-packages/path_planning_vrep_simulation" FILES_MATCHING REGEX "/home/konst/path_planning_vrep_simulation/devel/lib/python2.7/dist-packages/path_planning_vrep_simulation/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/installspace/path_planning_vrep_simulation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_planning_vrep_simulation/cmake" TYPE FILE FILES "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/installspace/path_planning_vrep_simulation-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_planning_vrep_simulation/cmake" TYPE FILE FILES
    "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/installspace/path_planning_vrep_simulationConfig.cmake"
    "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/installspace/path_planning_vrep_simulationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/path_planning_vrep_simulation" TYPE FILE FILES "/home/konst/path_planning_vrep_simulation/src/path_planning_vrep_simulation-master/package.xml")
endif()

