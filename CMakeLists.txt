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
  nav_msgs
  message_generation
  std_msgs
)

add_message_files(DIRECTORY msg FILES
   PVA.msg
   GameState.msg
   BalloonInfo.msg
   TxId.msg
   BaseTime.msg
   TriggerTime.msg
   ObservablesMeasurementTime.msg
   GnssObservables.msg
   GnssObservablesSegment.msg
   NavigationSolution.msg
   TransmitterInfo.msg
   TransmitterInfoSegment.msg
   StatusMessage.msg
   Ephemeris.msg
   Almanac.msg
   Bitcontainer.msg
   Info.msg
   Status.msg
   GPStoUTC.msg
   Coda.msg
   Radar.msg
   RadarTarget.msg
   RadarConfig.msg
   Attitude2D.msg
   Attitude3D.msg
   SingleBaselineRTK.msg
   MultiBaselineRTKAttitude2D.msg
   MultiBaselineRTKAttitude3D.msg
   Imu.msg
   ImuConfig.msg
   WifiStatus.msg
   PingStatus.msg
)

#Add service files
add_service_files( FILES
  SetQuadBool.srv
  updatePx4param.srv
)

generate_messages( DEPENDENCIES
  std_msgs
  nav_msgs
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime
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
