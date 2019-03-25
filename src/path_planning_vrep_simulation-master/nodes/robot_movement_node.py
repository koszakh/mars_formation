#!/usr/bin/env python

import rospy
import vrep_communicator.vrep_constants as const
from path_planning_vrep_simulation.msg import All_XML_PATHS
from vrep_communicator.VrepCommunicator import Robot
from vrep_communicator import vrep
from time import sleep

def callback(msg_data):
    vrep.simxFinish(-1)
    robots_threads = {}
    port_num = const.CON_PORT
    for msg in msg_data.paths:
        robots_threads[msg.robot_id] = Robot(msg.robot_id, msg.path, port_num)
        robots_threads[msg.robot_id].take_the_starting_position()
        port_num += 1
    sleep(1)
    for key in robots_threads:
        robots_threads[key].start()
    global path_data_sub
    path_data_sub.unregister()

rospy.init_node("robot_movement_node")
path_data_sub = rospy.Subscriber("path_from_xml", All_XML_PATHS, callback)

rospy.spin()
