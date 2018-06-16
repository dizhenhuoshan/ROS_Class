# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(topic_service)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(talker3 src/talker.cpp)
target_link_libraries(talker3 ${catkin_LIBRARIES})
add_dependencies(talker3 topic_service_generate_messages_cpp)

add_executable(listener3 src/listener.cpp)
target_link_libraries(listener3 ${catkin_LIBRARIES})
add_dependencies(listener3 topic_service_generate_messages_cpp)

add_executable(add_two_ints_server src/add_two_ints_server.cpp)
target_link_libraries(add_two_ints_server ${catkin_LIBRARIES})
add_dependencies(add_two_ints_server btopic_service_gencpp)

add_executable(add_two_ints_client src/add_two_ints_client.cpp)
target_link_libraries(add_two_ints_client ${catkin_LIBRARIES})
add_dependencies(add_two_ints_client topic_service_gencpp)

# %EndTag(FULLTEXT)%
