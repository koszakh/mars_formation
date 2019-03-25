#!/usr/bin/env python

import time
import rospy
from collections import namedtuple
from path_planning_vrep_simulation.msg import XML_PATH, Step, All_XML_PATHS
from vrep_communicator.VrepCommunicator import Vrep
import vrep_communicator.vrep_constants as const
from time import sleep


Point = namedtuple("point", ["x", "y"])
Step_tup = namedtuple("step", ["number",
                           "start",
                           "finish",
                           "duration"])

def prepare_path_msg(step_list, robot_id):
    path_msg = XML_PATH()
    path_msg.robot_id = robot_id
    path_msg.path = []
    for step in step_list:
        path_msg.path.append(prepare_step_msg(step))
    return path_msg

def prepare_step_msg(step):
    step_msg = Step()
    step_msg.number = step.number
    step_msg.start = step.start
    step_msg.finish = step.finish
    step_msg.duration = step.duration
    return step_msg

def prepare_final_msg(paths_list):
    final_msg = All_XML_PATHS()
    final_msg.paths = []
    for path in paths_list:
        final_msg.paths.append(path)
    return final_msg

vrep_con = Vrep(const.CON_PORT)
robots_data = vrep_con.get_robots_data()
cell_mas = vrep_con.create_mesh(const.ROWS, const.COLS)
sleep(1)
vrep_con.finish_connection()

step_0_1 = Step_tup(0, cell_mas[4][3], cell_mas[4][3], 8.9204378558581201)
step_1_1 = Step_tup(1, cell_mas[4][3], cell_mas[6][7], 4.4721359549995796)
step_2_1 = Step_tup(2, cell_mas[6][7], cell_mas[6][7], 3.1717477583206684)
step_3_1 = Step_tup(3, cell_mas[6][7], cell_mas[8][7], 2)
step_4_1 = Step_tup(4, cell_mas[8][7], cell_mas[8][7], 2.6565053833581622)
step_5_1 = Step_tup(5, cell_mas[8][7], cell_mas[11][3], 5)

step_0_2 = Step_tup(0, cell_mas[4][6], cell_mas[4][6], 16.328253591678578)
step_1_2 = Step_tup(1, cell_mas[4][6], cell_mas[6][7], 2.2360679774997898)
step_2_2 = Step_tup(2, cell_mas[6][7], cell_mas[6][7], 2.3282526916790793)
step_3_2 = Step_tup(3, cell_mas[6][7], cell_mas[9][7], 3)
step_4_2 = Step_tup(4, cell_mas[9][7], cell_mas[9][7], 2.25000022499987)
step_5_2 = Step_tup(5, cell_mas[9][7], cell_mas[11][9], 2.8284271247461916)

step_0_3 = Step_tup(0, cell_mas[4][9], cell_mas[4][9], 20.064147136111256)
step_1_3 = Step_tup(1, cell_mas[4][9], cell_mas[6][7], 2.8284271247461916)
step_2_3 = Step_tup(2, cell_mas[6][7], cell_mas[6][7], 2.250000224999873)
step_3_3 = Step_tup(3, cell_mas[6][7], cell_mas[11][7], 5)
step_4_3 = Step_tup(4, cell_mas[11][7], cell_mas[11][7], 12.500001350000428)
step_5_3 = Step_tup(5, cell_mas[11][7], cell_mas[11][6], 1)

step_0_4 = Step_tup(0, cell_mas[10][9], cell_mas[10][9], 4.8282531416788288)
step_1_4 = Step_tup(1, cell_mas[10][9], cell_mas[10][6], 3)
step_2_4 = Step_tup(2, cell_mas[10][6], cell_mas[10][6], 0.92174753332079362)
step_3_4 = Step_tup(3, cell_mas[10][6], cell_mas[9][3], 3.16227766016838)
step_4_4 = Step_tup(4, cell_mas[9][3], cell_mas[9][3], 13.107190525071656)
step_5_4 = Step_tup(5, cell_mas[9][3], cell_mas[8][7], 4.1231056256176615)
step_6_4 = Step_tup(6, cell_mas[8][7], cell_mas[8][7], 3.7981882064222425)
step_7_4 = Step_tup(7, cell_mas[8][7], cell_mas[6][7], 2)
step_8_4 = Step_tup(8, cell_mas[6][7], cell_mas[6][7], 1.6845035447492336)
step_9_4 = Step_tup(9, cell_mas[6][7], cell_mas[3][9], 3.6055512754639878)

step_0_5 = Step_tup(0, cell_mas[10][6], cell_mas[10][6], 5.8282531416788288)
step_1_5 = Step_tup(1, cell_mas[10][6], cell_mas[8][7], 2.2360679774997898)
step_2_5 = Step_tup(2, cell_mas[8][7], cell_mas[8][7], 1.3282526916790811)
step_3_5 = Step_tup(3, cell_mas[8][7], cell_mas[3][7], 5)
step_4_5 = Step_tup(4, cell_mas[3][7], cell_mas[3][7], 12.50000134999984)
step_5_5 = Step_tup(5, cell_mas[3][7], cell_mas[3][6], 1)

path_1 = [step_0_1, step_1_1, step_2_1, step_3_1, step_4_1, step_5_1]
path_2 = [step_0_2, step_1_2, step_2_2, step_3_2, step_4_2, step_5_2]
path_3 = [step_0_3, step_1_3, step_2_3, step_3_3, step_4_3, step_5_3]
path_4 = [step_0_4, step_1_4, step_2_4, step_3_4, step_4_4, step_5_4, step_6_4, step_7_4, step_8_4, step_9_4]
path_5 = [step_0_5, step_1_5, step_2_5, step_3_5, step_4_5, step_5_5]
paths_list = [path_1, path_2, path_3, path_4, path_5]

msgs = []
for key, path in zip(robots_data, paths_list):
    msg = prepare_path_msg(path, key)
    msgs.append(msg)
final_msg = prepare_final_msg(msgs)

rospy.init_node("test_path_from_xml")
pub = rospy.Publisher("path_from_xml", All_XML_PATHS, queue_size=1)

while not rospy.is_shutdown():
    time.sleep(1)
    pub.publish(final_msg)
