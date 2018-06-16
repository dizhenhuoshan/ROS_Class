#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "kobuki_msgs/BumperEvent.h"

void callback(const kobuki_msgs::BumperEvent collision)
{
	ros::NodeHandle nh;
	ros::Publisher pub_2 = nh.advertise<geometry_msgs::Twist>("cmd_vel_mux/input/navi", 1);
	geometry_msgs::Twist msg_2;
	ros::Rate loop_rate_2(10);
	int count = 0;
	int max_run = 15;


	if (collision.bumper == 0 and collision.state == 1)
	{
		msg_2.linear.x = 0;
		msg_2.angular.z = -0.5;
		for (int i = 0; i < max_run; i++)
		{
			pub_2.publish(msg_2);
			loop_rate_2.sleep();
		}
	}
	else if (collision.bumper == 1 and collision.state == 1)
	{
		msg_2.linear.x = 0;
		msg_2.angular.z = -1.0;
		for (int i = 0; i < max_run; i++)
		{
			pub_2.publish(msg_2);
			loop_rate_2.sleep();
		}
	}
	else if (collision.bumper == 2 and collision.state == 1)
	{
		msg_2.linear.x = 0;
		msg_2.angular.z = 0.5;
		for (int i = 0; i < max_run; i++)
		{
			pub_2.publish(msg_2);
			loop_rate_2.sleep();
		}
	}
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "collision_turtlebot");
	ros::NodeHandle n;
	ros::Publisher pub = n.advertise<geometry_msgs::Twist>("cmd_vel_mux/input/navi", 100);
	ros::Subscriber sub = n.subscribe<kobuki_msgs::BumperEvent>("mobile_base/events/bumper", 100, callback);
	geometry_msgs::Twist msg;
	msg.linear.x = 0.3;
	msg.angular.z = 0;
	ros::Rate loop_rate(20);
	while(ros::ok())
	{
		pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}
