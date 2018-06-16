cmake_minimum_required(VERSION 2.8.3)
project(kinect1)

## Compile as C++11, supported in ROS kinect1 and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
  sensor_msgs
  pcl_conversions
  pcl_ros
)

catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

  
add_executable(kinect_point src/kinect_point.cpp)  
target_link_libraries(kinect_point ${catkin_LIBRARIES})  
add_dependencies(kinect_point pcl_conversions pcl_ros)  
