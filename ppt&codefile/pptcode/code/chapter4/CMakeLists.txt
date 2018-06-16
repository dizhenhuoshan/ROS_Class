# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(chapter4)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg cv_bridge image_geometry pcl_conversions pcl_ros image_transport)

## Declare ROS messages and services
#add_message_files(FILES Num.msg)
add_service_files(FILES SetSpeed.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})
# Log4cxx
find_library(LOG4CXX_LIBRARY log4cxx)

#uncomment if you have defined messages

add_executable(example1 src/example1.cpp)
add_dependencies(example1 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example1 ${catkin_LIBRARIES} ${LOG4CXX_LIBRARY})

add_executable(example2 src/example2.cpp)
add_dependencies(example2 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example2 ${catkin_LIBRARIES})

add_executable(example3 src/example3.cpp)
add_dependencies(example3 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example3 ${catkin_LIBRARIES})

add_executable(example4 src/example4.cpp)
add_dependencies(example3 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example4 ${catkin_LIBRARIES})

add_executable(example5 src/example5.cpp)
add_dependencies(example3 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example5 ${catkin_LIBRARIES})

add_executable(example6 src/example6.cpp)
add_dependencies(example3 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example6 ${catkin_LIBRARIES})

add_executable(example7 src/example7.cpp)
add_dependencies(example3 ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(example7 ${catkin_LIBRARIES})
