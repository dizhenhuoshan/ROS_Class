cmake_minimum_required(VERSION 2.8.3)
project(chapter9)

find_package(catkin REQUIRED COMPONENTS
  laser_geometry
  roscpp
  std_msgs
  tf
)


catkin_package()

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library

add_executable(turtle_tf_broadcaster src/tf_broadcaster.cpp)
add_executable(turtle_tf_listener src/tf_listener.cpp)
add_executable(robot_location src/tf_listener.cpp)

#add_executable(laser src/laser.cpp)
#add_executable(odometry src/odometry.cpp)
#add_executable(base_controller src/base_controller.cpp)

#add_executable(5example1 src/example1.cpp)
target_link_libraries(turtle_tf_broadcaster  ${catkin_LIBRARIES})
target_link_libraries(turtle_tf_listener ${catkin_LIBRARIES})
target_link_libraries(robot_location ${catkin_LIBRARIES})
#target_link_libraries(laser  ${catkin_LIBRARIES})
#target_link_libraries(odometry ${catkin_LIBRARIES})
#target_link_libraries(base_controller ${catkin_LIBRARIES})

