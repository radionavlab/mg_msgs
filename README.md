# mg_msgs
Repository for compiling all message and service definitions for machine games

This package contains no source code. All it does is build the message and service definitions so other ROS packages can utilize them.

## Using this package
1) Clone this package in the same catkin workspace as the packages that need these messages.

2) For every package that requires these messages, edit the package.xml and add:
    * ``` <build_depend>mg_msgs</build_depend> ```
    * ``` <run_depend>mg_msgs</run_depend> ```

3) For every package that requires these messages, edit the CMakeLists.txt and add:
    1.  mg_msgs to find_package
    2.  mg_msgs to CATKIN_DEPENDS in catkin_package
    3.  add_dependencies(TARGET mg_msgs_gencpp)
