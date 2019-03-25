execute_process(COMMAND "/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/konst/path_planning_vrep_simulation/build/path_planning_vrep_simulation-master/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
