#!/usr/bin/env python

import rospy
import vrep_communicator.VrepCommunicator as vc
import vrep_communicator.vrep_constants as const
from mars_formation.msg import Path, AllPathes
import dubins

def prepare_paths_msg(paths_list):
    paths_msg = AllPathes()
    paths_msg.paths_list = []
    for path in paths_list:
        paths_msg.paths_list.append(prepare_path_msg(path))
    return paths_msg

def prepare_path_msg(path_data):
    path_msg = Path()
    path_msg.platform_id = path_data[0]
    path_msg.path_points = path_data[1]
    path_msg.goal = path_data[2]
    path_msg.final_orient_point = path_data[3]
    return path_msg

rospy.init_node("path_planner_node")
paths_data = rospy.Publisher("paths_data", AllPathes)

vrep_con = vc.Vrep(const.CON_PORT)
turning_radius = rospy.get_param('turning_radius')
step_size = rospy.get_param('step_size')

robot1_handle = vrep_con.get_object_handle('marsbase1')
robot2_handle = vrep_con.get_object_handle('marsbase2')
robot3_handle = vrep_con.get_object_handle('marsbase')
robot1_pos = vrep_con.get_object_position(robot1_handle)
robot1_orient = vrep_con.get_mars_direction(robot1_handle)
robot2_pos = vrep_con.get_object_position(robot2_handle)
robot2_orient = vrep_con.get_mars_direction(robot2_handle)
robot3_pos = vrep_con.get_object_position(robot3_handle)
robot3_orient = vrep_con.get_mars_direction(robot3_handle)

left_goal, right_goal = vrep_con.get_side_points(robot3_handle)
vrep_con.create_dummy(left_goal)
vrep_con.create_dummy(right_goal)
s1 = (robot1_pos.x, robot1_pos.y, vc.degrees_to_radians(robot1_orient))
g1 = (left_goal.x, left_goal.y, vc.degrees_to_radians(robot3_orient + 90))
path_1 = dubins.shortest_path(s1, g1, turning_radius)
configurations1, _ = path_1.sample_many(step_size)
path1 = (robot1_handle, vc.convert_path_to_point2d(configurations1), left_goal, robot3_pos)
vrep_con.create_dummy_path(path1[1])

s2 = (robot2_pos.x, robot2_pos.y, vc.degrees_to_radians(robot2_orient))
g2 = (right_goal.x, right_goal.y, vc.degrees_to_radians(robot3_orient - 90))
path_2 = dubins.shortest_path(s2, g2, turning_radius)
configurations2, _ = path_2.sample_many(step_size)
path2 = (robot2_handle, vc.convert_path_to_point2d(configurations2), right_goal, robot3_pos)
vrep_con.create_dummy_path(path2[1])
vrep_con.finish_connection()
paths = [path1, path2]
msg = prepare_paths_msg(paths)
paths_data.publish(msg)

rospy.spin()
