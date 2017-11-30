# Depend on system install of Gazebo
if (NOT drake_DIR)
  set(drake_DIR "/opt/drake")
endif()

find_package(drake REQUIRED
    PATHS ${drake_DIR})

message(STATUS "DRAKE installation found at: ${drake_DIR}")

# The following lines will tell catkin to add the Gazebo directories and libraries to the
# respective catkin_* cmake variables.
set(ros_drake_INCLUDE_DIRS ${drake_INCLUDE_DIRS})
set(ros_drake_LIBRARY_DIRS ${drake_LIBRARY_DIRS})
set(ros_drake_LIBRARIES ${drake_LIBRARIES})
