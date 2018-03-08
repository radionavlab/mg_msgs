cmake_minimum_required(VERSION 2.8.3)
project(mg_msgs)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  cmake_modules
  geometry_msgs
  message_generation
  std_msgs
)

add_message_files(DIRECTORY msg FILES
   PVA.msg
 )

#Add service files
add_service_files( FILES
  updatePx4param.srv
)

generate_messages( DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
