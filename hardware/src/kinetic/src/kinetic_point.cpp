#include "ros/ros.h"
#include "pcl/ros/conversation.h"
#include "pcl/point_cloud.h"
//#include "pcl/point_types.h"
#include "pcl/fiters/voxel_grid.h"
using namespace std;

class telekinetc
{
private:
	ros::NodeHandle n;
	ros::Publisher pub;
	ros::Subscriber sub;

public:
	void callback(const sensor_msgs::PointCloud2::ConstPtr& input)
	{
		sensor_msgs::PointCloud2 output;
		pcl::VoxelGrid<sensor_msgs:PointCloud2> sor;
		sor.setInputCloud(input);
		sor.LeafSize(0.02f, 0.02f, 0.02f);
		pub.publish(output);
	}
	telekinetc()
	{
		sub = n.subscribe<sensor_msgs::PointCloud2>("input", 10, &telekinetc::callback, this);
		pub = n.advertise<sensor_msgs::PointCloud2>("camera/depth/points", 1000);
	}
};

int main(int argc, char **argv) {
	ros::init(argc, argv, "teleKenitc"); //初始化node，launch或者是ROSrun可以覆盖掉这个名字
	telekinetc tmpkenic;
	ros::spin();
	return 0;
}
