#!/usr/bin/env python

import rospy
import vrep_communicator.vrep_constants as const
from mars_formation.msg import AllPathes
from vrep_communicator.VrepCommunicator import Robot
from vrep_communicator import vrep
from time import sleep

def callback(msg_data):
    vrep.simxFinish(-1)
    robots_threads = {}
    port_num = const.CON_PORT
    for msg in msg_data.paths_list:
        robots_threads[msg.platform_id] = Robot(msg.platform_id, \
                                                port_num, msg.path_points, msg.goal, msg.final_orient_point)
        port_num += 1
    sleep(1)
    for key in robots_threads:
        robots_threads[key].start()
    global path_data_sub
    path_data_sub.unregister()

rospy.init_node("robot_movement_node")
path_data_sub = rospy.Subscriber("paths_data", AllPathes, callback)

rospy.spin()
