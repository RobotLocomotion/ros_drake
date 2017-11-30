cmake_minimum_required(VERSION 2.8.3)
project(ros_drake)

find_package(catkin REQUIRED)

catkin_package(
  CFG_EXTRAS ros_drake-extras.cmake
)
