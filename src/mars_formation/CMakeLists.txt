cmake_minimum_required(VERSION 2.8.3)
project(mars_formation)

catkin_python_setup()

find_package (
  catkin REQUIRED COMPONENTS
  roscpp
  rospy
  message_generation
)


add_message_files (
  FILES
  Point2d.msg
  Path.msg
  AllPathes.msg
)


generate_messages (
  DEPENDENCIES
  std_msgs
)


catkin_package (
  CATKIN_DEPENDS message_runtime
)


include_directories (
  ${catkin_INCLUDE_DIRS}
)

