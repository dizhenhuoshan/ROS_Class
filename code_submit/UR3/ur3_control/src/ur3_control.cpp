#include <moveit/move_group_interface/move_group.h>

double pos_x[2] = {-0.00041345, 0.45705};
double pos_y[2] = {0.19425, 0.19421};
double pos_z[2] = {0.69415, 0.066878};
double orien_x[2] = {-0.00045399, 0.70688};
double orien_y[2] = {-0.00045422, 0.70733};
double orien_z[2] = {0.70684, 0.00055309};
double orien_w[2] = {0.70738, 0.00055356};


int main(int argc, char **argv)

{
  ros::init(argc, argv, "move_group_interface_tutorial");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();

  moveit::planning_interface::MoveGroup group("manipulator");
  for (int i = 0; i < 2; i++)
  {
      geometry_msgs::Pose target_pose1;
      target_pose1.orientation.x = orien_x[i];
      target_pose1.orientation.y = orien_y[i];
      target_pose1.orientation.z = orien_z[i];
      target_pose1.orientation.w = orien_w[i];

      target_pose1.position.x = pos_x[i];
      target_pose1.position.y = pos_y[i];
      target_pose1.position.z = pos_z[i];
      group.setPoseTarget(target_pose1);


      moveit::planning_interface::MoveGroup::Plan my_plan;
      bool success = static_cast<bool>(group.plan(my_plan));
      if (i == 0)
      {
          ROS_INFO("Stand Up~!!!");
      }
      else
        ROS_INFO("Go Home~!!!");

      if(success)
        group.execute(my_plan);
        sleep(10);
  }
  ROS_INFO("Finished");
  return 0;
}
