#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>

std::string turtle_name;

void poseCallback(const turtlesim::PoseConstPtr& msg) //msg :XYZ RPY
{
    static tf::TransformBroadcaster br; //TF 发布者
    tf::Transform transform;
    transform.setOrigin(tf::Vector3(msg->x, msg->y, 0.0)); //设置原点
    tf::Quaternion quaternion;
    transform.setRotation(tf::createQuaternionFromYaw(msg->theta));
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", turtle_name));
}
int main(int argc, char** argv){
    ros::init(argc, argv, "my_tf_broadcaster"); //node的初始名字
    if (argc != 2) {
      ROS_ERROR("need turtle name as argument");
      return -1;
    };
    turtle_name = argv[1];

    ros::NodeHandle node;
    ros::Subscriber sub = node.subscribe(turtle_name + "/pose", 10, &poseCallback);

    ros::spin();
    return 0;
};
