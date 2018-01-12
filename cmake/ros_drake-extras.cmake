# Depend on system install of Drake
  
if (NOT drake_DIR)
  set(drake_DIR "/opt/drake")
endif()

# Keep a copy of original drake_DIR. It is overwritten by
# the find_package call
set(drake_string_DIR "${drake_DIR}")

find_package(drake QUIET PATHS ${drake_DIR})

if (NOT drake_FOUND)
  message(FATAL_ERROR "\

 =====================================================================\n\
 DRAKE INSTALLATION NOT FOUND\n\
 Drake installation was not found in ${drake_string_DIR}.\n\
 -Ddrake_DIR= can be used to pass the root of an existing drake setup.\n\
 Please check http://drake.mit.edu/installation.html for new\n\
 installations.\n\
 =====================================================================\n\
 ")
endif()

message(STATUS "DRAKE installation found at: ${drake_DIR}")

# The following lines will tell catkin to add the Drake directories and libraries to the
# respective catkin_* cmake variables.
set(ros_drake_INCLUDE_DIRS ${drake_INCLUDE_DIRS})
set(ros_drake_LIBRARY_DIRS ${drake_LIBRARY_DIRS})
set(ros_drake_LIBRARIES ${drake_LIBRARIES})
