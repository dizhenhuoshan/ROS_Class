#include "ros/ros.h"
#include "sensor_msgs/Joy.h"
#include "geometry_msgs/Twist.h"

using namespace std;

class telep
{
private:
	ros::NodeHandle n;
	ros::Publisher pub;
	ros::Subscriber sub;
	int vellinear;
	int velangular;

public:
	void callback(const sensor_msgs::Joy::ConstPtr& joy)
	{
		geometry_msgs::Twist vel;
		vel.angular.z = joy -> axes[velangular];
		vel.linear.x = joy -> axes[vellinear];
		pub.publish(vel);
	}
	telep()
	{
		n.param("axis_linear", vellinear, vellinear);
		n.param("axis_angular", velangular, velangular);
		pub = n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
		sub = n.subscribe<sensor_msgs::Joy>("joy", 10, &telep::callback, this);
	}
};

int main(int argc, char **argv) {
	ros::init(argc, argv, "teleopJoy"); //初始化node，launch或者是ROSrun可以覆盖掉这个名字
	telep telep_turtle;
	ros::spin();
	return 0;
}
