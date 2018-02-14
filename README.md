## ROS wrapper for the Drake C++ toolbox (http://drake.mit.edu/)

ROS helper code used to facilitate the creation of packages using Drake and ROS. It uses the [CFG extras mechanism](
http://docs.ros.org/indigo/api/catkin/html/dev_guide/generated_cmake_api.html#catkin-package) from catkin to export Drake configurations transparently to the software using this package. These configurations include:
 * `drake_DIR` variable to locate the installation of Drake (default automatically to /opt/drake).
 * Help messsage with the location of the install instructions for Drake if it is not found.
 * Exported automatically `drake_INCLUDE_DIRS`, `drake_LIBRARY_DIRS` and `drake_LIBRARIES` into the corresponding `CATKIN_*` variables.

*Note:* since there is no drake package available from Ubuntu or ROS repositories, this package can not use drake in any place that needs to be resolved by rosdep like the package.xml manifest.

