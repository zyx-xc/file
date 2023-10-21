#include <ros/ros.h>
#include "test_pkg/Time_order.h"

// 接收到订阅的消息后，会进入消息回调函数
void Time_orderInfoCallback(const test_pkg::Time_order::ConstPtr& msg)
{
    // 将接收到的消息打印出来
    ROS_INFO("Subcribe Time_order Info: t:%16f  number:%d", 
			 msg->t, msg->number);
}

int main(int argc, char **argv)
{
    // 初始化ROS节点
    ros::init(argc, argv, "listener");

    // 创建节点句柄
    ros::NodeHandle n;

    // 创建一个Subscriber，订阅名为/topic_info的topic，注册回调函数Time_orderInfoCallback
    ros::Subscriber TO_info_sub = n.subscribe("/topic_info", 10, Time_orderInfoCallback);

    // 循环等待回调函数
    ros::spin();

    return 0;
}

