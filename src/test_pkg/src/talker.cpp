#include <ros/ros.h>
#include "test_pkg/Time_order.h"

int main(int argc, char **argv)
{
    // ROS节点初始化
    ros::init(argc, argv, "talker");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个Publisher，发布名为/topic_info的topic，消息类型为test_pkg::Time_order，队列长度10
    ros::Publisher TO_info_pub = n.advertise<test_pkg::Time_order>("/topic_info", 10);
    ros::Duration(2.0).sleep();

    // 设置循环的频率
    ros::Rate r(1);
    
    int count=0;
    while (ros::ok())
    {
        // 初始化test_pkg::Time_order类型的消息
    		test_pkg::Time_order To_msg;
		ros::Time t1 = ros::Time::now();
		To_msg.t = t1.toSec();
		To_msg.number  = 1+count;
		
        // 发布消息
		TO_info_pub.publish(To_msg);

       	ROS_INFO("Publish Time_order Info: t:%16f  number:%d ", 
				  To_msg.t, To_msg.number);
		count++;
        // 按照循环频率延时
        r.sleep();
    }

    return 0;
}

