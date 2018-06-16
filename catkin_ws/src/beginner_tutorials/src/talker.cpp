#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char **argv) {
	ros::init(argc, argv, "talker"); //初始化node，launch或者是ROSrun可以覆盖掉这个名字
	ros::NodeHandle n; //一个node句柄 类似于C++指针
	ros::Publisher chatter_pub = n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
	ros::Rate loop_rate(10); //控制程序周期，帮助功能
	int count = 0;
	srand(time(NULL));
	while (ros::ok()) {
		geometry_msgs::Twist msg;
		//msg.str = ss.str();
		//msg.num = count;
		//ROS_INFO("%s", msg.str.c_str());
		msg.linear.x = (rand() % 100) / 50;
		msg.linear.y = (rand() % 100) / 50;
		msg.linear.z = (rand() % 100) / 50;
		msg.angular.x = (rand() % 100) / 100;
		msg.angular.y = -(rand() % 100) / 100;
		msg.angular.z = (rand() % 100) / 100;
		chatter_pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		++count;
	}
	return 0;
}
