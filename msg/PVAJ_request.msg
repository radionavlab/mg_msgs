# Fully defined message for minimum snap request
# the booleans indicate whether Pos, Vel, Acc, or Jerk are used
#  max_vel, max_acc and max_jerk constrain vel, acc, and jerk to a maximum magnitude.
#  Set max_vel, max_acc or max_jerk to <=0 to not constrain those
geometry_msgs/Point Pos
geometry_msgs/Vector3 Vel
geometry_msgs/Vector3 Acc
geometry_msgs/Vector3 Jerk
float32 yaw
float32 yaw_dot
bool use_pos
bool use_vel
bool use_acc
bool use_jerk
bool use_yaw
bool use_yaw_dot
float32 time