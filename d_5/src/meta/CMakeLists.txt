cmake_minimum_required(VERSION 2.8.3)
project(meta)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)



## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   nstr.msg
 )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Add.srv
#)


## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
 )

catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

  
add_executable(talker src/talker.cpp)  
target_link_libraries(talker ${catkin_LIBRARIES})  
add_dependencies(talker meta_generate_messages_cpp)  
  
add_executable(listener src/listener.cpp)  
target_link_libraries(listener ${catkin_LIBRARIES})  
add_dependencies(listener meta_generate_messages_cpp)
