cmake_minimum_required(VERSION 2.8.3)
project(turtle1)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)

catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

  
add_executable(talker src/talker.cpp)  
target_link_libraries(talker ${catkin_LIBRARIES})  
add_dependencies(talker turtle1_generate_messages_cpp)  

