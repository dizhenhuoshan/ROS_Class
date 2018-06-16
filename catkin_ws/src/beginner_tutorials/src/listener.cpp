#include <cstdio>
#include "ros/ros.h"
#include "beginner_tutorials/nstr.h"
void chatterCallback(const beginner_tutorials::nstr msg) {
	ROS_INFO("I heard: [%s] in count [%lf]", msg.str.c_str(), msg.num);
}
int main(int argc, char **argv) {
	ros::init(argc, argv, "listener");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
	printf("test\n");
	ros::spin(); //无限制地处理回调函数 OR ros::spinonce() //调用一次
	return 0;
}
