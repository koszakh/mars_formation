# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mars_formation: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imars_formation:/home/konst/mars_formation/src/mars_formation/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mars_formation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" NAME_WE)
add_custom_target(_mars_formation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_formation" "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" "mars_formation/Point2d"
)

get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" NAME_WE)
add_custom_target(_mars_formation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_formation" "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" ""
)

get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" NAME_WE)
add_custom_target(_mars_formation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mars_formation" "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" "mars_formation/Path:mars_formation/Point2d"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_formation
)
_generate_msg_cpp(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_formation
)
_generate_msg_cpp(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg;/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_formation
)

### Generating Services

### Generating Module File
_generate_module_cpp(mars_formation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_formation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mars_formation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mars_formation_generate_messages mars_formation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_cpp _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_cpp _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_cpp _mars_formation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_formation_gencpp)
add_dependencies(mars_formation_gencpp mars_formation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_formation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_formation
)
_generate_msg_eus(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_formation
)
_generate_msg_eus(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg;/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_formation
)

### Generating Services

### Generating Module File
_generate_module_eus(mars_formation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_formation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mars_formation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mars_formation_generate_messages mars_formation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_eus _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_eus _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_eus _mars_formation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_formation_geneus)
add_dependencies(mars_formation_geneus mars_formation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_formation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_formation
)
_generate_msg_lisp(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_formation
)
_generate_msg_lisp(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg;/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_formation
)

### Generating Services

### Generating Module File
_generate_module_lisp(mars_formation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_formation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mars_formation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mars_formation_generate_messages mars_formation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_lisp _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_lisp _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_lisp _mars_formation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_formation_genlisp)
add_dependencies(mars_formation_genlisp mars_formation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_formation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_formation
)
_generate_msg_nodejs(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_formation
)
_generate_msg_nodejs(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg;/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_formation
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mars_formation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_formation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mars_formation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mars_formation_generate_messages mars_formation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_nodejs _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_nodejs _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_nodejs _mars_formation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_formation_gennodejs)
add_dependencies(mars_formation_gennodejs mars_formation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_formation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation
)
_generate_msg_py(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation
)
_generate_msg_py(mars_formation
  "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg"
  "${MSG_I_FLAGS}"
  "/home/konst/mars_formation/src/mars_formation/msg/Path.msg;/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation
)

### Generating Services

### Generating Module File
_generate_module_py(mars_formation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mars_formation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mars_formation_generate_messages mars_formation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Path.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_py _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/Point2d.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_py _mars_formation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/konst/mars_formation/src/mars_formation/msg/AllPathes.msg" NAME_WE)
add_dependencies(mars_formation_generate_messages_py _mars_formation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mars_formation_genpy)
add_dependencies(mars_formation_genpy mars_formation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mars_formation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_formation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mars_formation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mars_formation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_formation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mars_formation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mars_formation_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_formation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mars_formation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mars_formation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_formation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mars_formation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mars_formation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mars_formation/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mars_formation_generate_messages_py std_msgs_generate_messages_py)
endif()
