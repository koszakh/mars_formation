execute_process(COMMAND "/home/konst/mars_formation/build/mars_formation/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/konst/mars_formation/build/mars_formation/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
