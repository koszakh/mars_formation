import vrep
import vrep_constants as const
import math
from Fields_objects import Point
from matplotlib.path import Path
from numpy import array
from math import acos, cos, fabs, pow, pi, sin, sqrt
import threading as thr
from time import time, sleep
from collections import namedtuple
import rospy

class Robot(thr.Thread):
    def __init__(self, handle, con_port, path, goal, orient_point):
        thr.Thread.__init__(self)
        self.handle = handle
        self.vrep_con = Vrep(con_port)
        if self.vrep_con.client_id == -1:
            raise Exception('Failed to connect to remote API server.')
        vrep.simxSynchronous(self.vrep_con.client_id, True)
        self.path = path
        self.goal = goal
        self.movement_speed = rospy.get_param('movement_speed')
        self.rotation_speed = rospy.get_param('rotation_speed')
        self.distance_error = rospy.get_param('distance_error')
        self.angle_error = rospy.get_param('angle_error')
        self.pid_delay = rospy.get_param('pid_delay')
        self.orient_point = orient_point
        self.name = self.vrep_con.get_object_name(self.handle)
        self.left_motor_handle = self.vrep_con.get_object_child(self.handle, 1)
        self.right_motor_handle = self.vrep_con.get_object_child(self.handle, 0)
        self.left_wheel = self.vrep_con.get_object_child(self.left_motor_handle, 0)
        self.right_wheel = self.vrep_con.get_object_child(self.right_motor_handle, 0)

    def wheel_rotation(self, left_motor_speed, right_motor_speed):
        retCode = vrep.simxSetJointTargetVelocity(self.vrep_con.client_id, self.left_motor_handle, \
                                                  left_motor_speed, vrep.simx_opmode_streaming)
        retCode = vrep.simxSetJointTargetVelocity(self.vrep_con.client_id, self.right_motor_handle, \
                                                  right_motor_speed, vrep.simx_opmode_streaming)

    def get_angle_difference(self, goal):
        goal_angle = self.vrep_con.get_object_orientation(self.handle, goal)
        angle_difference = goal_angle - self.get_robot_orientation()
        if angle_difference > 180:
            angle_difference = -(360 - angle_difference)
        elif angle_difference < -180:
            angle_difference = 360 + angle_difference
        return angle_difference

    def move_with_PID(self, goal):
        """
        Function that regulates control effect on the wheels to align trajectory
        """
        old_error = 0
        error_sum = 0
        while self.get_robot_position().get_distance_to(goal) > self.distance_error:
            error = self.get_angle_difference(goal)
            error_sum += error
            if error_sum < const.iMin:
                error_sum = const.iMin
            elif error_sum > const.iMax:
                error_sum = const.iMax
            up = const.kp * error
            ui = const.ki * error_sum
            ud = const.kd * (error - old_error)
            old_error = error
            u = up + ui + ud
            if u > 0:
                left_u = self.movement_speed - fabs(u)
                right_u = self.movement_speed
            else:
                left_u = self.movement_speed
                right_u = self.movement_speed - fabs(u)
            self.wheel_rotation(left_u, right_u)
            sleep(self.pid_delay)
        self.stop()
        sleep(0.5)

    def stop(self):
        self.wheel_rotation(0, 0)

    def get_robot_orientation(self):
        left_wheel_pos = self.vrep_con.get_object_position(self.left_wheel)
        angle = self.vrep_con.get_object_orientation(self.right_wheel, left_wheel_pos) - 90
        if angle > 180:
            angle = -(360 - angle)
        elif angle < -180:
            angle = 360 + angle
        return angle

    def get_robot_direction_vector(self):
        left_wheel_pos = self.vrep_con.get_object_position(self.left_wheel)
        right_wheel_pos = self.vrep_con.get_object_position(self.right_wheel)
        wheel_dir_vector = (left_wheel_pos.x - right_wheel_pos.x, \
                            left_wheel_pos.y - right_wheel_pos.y)
        direction_vector_mod = sqrt(wheel_dir_vector[0] ** 2 \
                                    + wheel_dir_vector[1] ** 2)
        norm_direction_vector = (wheel_dir_vector[0] / direction_vector_mod, \
                                 wheel_dir_vector[1] / direction_vector_mod)
        x_new = norm_direction_vector[1]
        y_new = -norm_direction_vector[0]
        return Point(x_new, y_new)

    def get_robot_position(self):
        return self.vrep_con.get_object_position(self.handle)

    def turn_to_a_point(self, point_pos):
        angle_difference = self.get_angle_difference(point_pos)
        if angle_difference > 0:
            self.wheel_rotation(-self.rotation_speed, self.rotation_speed)
        else:
            self.wheel_rotation(self.rotation_speed, -self.rotation_speed)
        while fabs(angle_difference) > self.angle_error:
            angle_difference = self.get_angle_difference(point_pos)
        self.stop()

    def move_to_the_point(self, goal):
        angle_difference = self.get_angle_difference(goal)
        if fabs(angle_difference) > self.angle_error:
            self.turn_to_a_point(goal)
        self.move_with_PID(goal)

    def run(self):
        for path_point in self.path:
            if self.get_robot_position().get_distance_to(path_point) > self.distance_error:
                self.move_to_the_point(path_point)
        self.move_to_the_point(self.goal)
        self.turn_to_a_point(self.orient_point)
        sleep(0.5)

class Vrep():
    def __init__(self, con_port):
        self.client_id = vrep.simxStart(const.CON_ADDRESS, con_port, False, True, \
                                        const.TIMEOUT_IN_MS, const.COMM_THREAD_CYCLE_IN_MS)

    def get_object_handle(self, obj_name):
        ret, handle = vrep.simxGetObjectHandle(self.client_id, obj_name, vrep.simx_opmode_oneshot_wait)
        return handle

    def get_object_child(self, parent_handle, index):
        ret, child_handle = vrep.simxGetObjectChild(self.client_id, \
                                                    parent_handle, index, vrep.simx_opmode_oneshot_wait)
        return child_handle

    def get_object_position(self, object_handle):
        """
        Function that returns position of object on the scene in V-REP
        """
        res, object_position = vrep.simxGetObjectPosition(self.client_id, object_handle, -1, \
                                                          vrep.simx_opmode_blocking)
        if res == vrep.simx_return_ok:
            return Point(object_position[0], object_position[1])
        else:
            print('Remote function call failed with result {0}.'.format(res))
            return ()

    def get_robots_data(self):
        if not (self.get_object_handle(const.ROBOTS_NAMES_TREE) == 0):
            robots_data = dict()
            robots_handles = self.get_object_childs(const.ROBOTS_NAMES_TREE)
            for robot in robots_handles:
                robot_boundary_points = self.get_boundary_points(robot)
                robot_position = self.get_object_position(robot)
                robot_direction = self.get_robot_direction_vector(robot)
                robots_data[robot] = [robot_position, robot_direction, robot_boundary_points]
            return robots_data
        else:
            return {}

    def get_goal_data(self):
        if not (self.get_object_handle(const.TARGETS_NAMES_TREE) == 0):
            goal_data = dict()
            goal_handles = self.get_object_childs(const.TARGETS_NAMES_TREE)
            for goal in goal_handles:
                goal_boundary_points = self.get_boundary_points(goal)
                goal_position = self.get_object_position(goal)
                goal_data[goal] = [goal_position, goal_boundary_points]
            return goal_data
        else:
            return {}

    def get_obstacles_data(self):
        if not (self.get_object_handle(const.OBSTACLES_NAMES_TREE) == 0):
            if const.WITH_DYNAMIC_OBSTACLES:
                pass
            else:
                obstacles_data = dict()
                obstacle_handles = self.get_object_childs(const.OBSTACLES_NAMES_TREE)
                for obstacle in obstacle_handles:
                    obstacle_boundary_points = self.get_boundary_points(obstacle)
                    obstacle_position = self.get_object_position(obstacle)
                    obstacles_data[obstacle] = [obstacle_position, obstacle_boundary_points]
                return obstacles_data
        else:
            return {}

    def get_boundary_points(self, object_handle):
        """
        Function that returns boundary points of object's (obstacle) boundary box
        """
        points = []
        obstacle_position = self.get_object_position(object_handle)
        ret, orient = vrep.simxGetObjectOrientation(self.client_id, object_handle, -1, \
                                                    vrep.simx_opmode_blocking)
        ret, x_1 = vrep.simxGetObjectFloatParameter(self.client_id, object_handle, 15, \
                                                    vrep.simx_opmode_blocking)
        ret, y_1 = vrep.simxGetObjectFloatParameter(self.client_id, object_handle, 16, \
                                                    vrep.simx_opmode_blocking)
        ret, x_2 = vrep.simxGetObjectFloatParameter(self.client_id, object_handle, 18, \
                                                    vrep.simx_opmode_blocking)
        ret, y_2 = vrep.simxGetObjectFloatParameter(self.client_id, object_handle, 19, \
                                                    vrep.simx_opmode_blocking)
        angle = orient[2]
        # Extension of boundaries, so that the robots moves without collisions
        x_1 = x_1 - 0.3
        x_2 = x_2 + 0.3
        y_1 = y_1 - 0.3
        y_2 = y_2 + 0.3


        p_1 = (x_1 * cos(angle) - y_1 * sin(angle) + obstacle_position.x, y_1 * \
               cos(angle) + x_1 * sin(angle) + obstacle_position.y)
        points.append(Point(p_1[0], p_1[1]))
        p_2 = (x_1 * cos(angle) - y_2 * sin(angle) + obstacle_position.x, y_2 * \
               cos(angle) + x_1 * sin(angle) + obstacle_position.y)
        points.append(Point(p_2[0], p_2[1]))
        p_3 = (x_2 * cos(angle) - y_2 * sin(angle) + obstacle_position.x, y_2 * \
               cos(angle) + x_2 * sin(angle) + obstacle_position.y)
        points.append(Point(p_3[0], p_3[1]))
        p_4 = (x_2 * cos(angle) - y_1 * sin(angle) + obstacle_position.x, y_1 * \
               cos(angle) + x_2 * sin(angle) + obstacle_position.y)
        points.append(Point(p_4[0], p_4[1]))
        return points

    def get_object_childs(self, objName):
        """
        Function that return handles of object's childs from the V-REP scene.
        This function is useful when the exact number of objects is unknown
        """
        index = 0
        children_list = []
        child = 0
        parent_handle = self.get_object_handle(objName)
        while child != -1:
            res, child = vrep.simxGetObjectChild(self.client_id, parent_handle, index, vrep.simx_opmode_blocking)
            if res == vrep.simx_return_ok:
                children_list.append(child)
                index = index + 1
            else:
                print('Remote fucntion get_object_childs call failed.')
                return []
        del children_list[len(children_list) - 1]
        return children_list

    def finish_connection(self):
        vrep.simxFinish(self.client_id)

    def get_robot_orientation(self, robot_handle):
        left_motor_handle = self.get_object_child(robot_handle, 0)
        right_motor_handle = self.get_object_child(robot_handle, 1)
        left_wheel = self.get_object_child(left_motor_handle, 0)
        right_wheel = self.get_object_child(right_motor_handle, 0)
        left_wheel_pos = self.get_object_position(left_wheel)
        angle = self.get_object_orientation(right_wheel, left_wheel_pos) - 90
        if angle > 180:
            angle = -(360 - angle)
        elif angle < -180:
            angle = 360 + angle
        return angle

    def get_robot_direction_vector(self, robot_handle):
        left_motor_handle = self.get_object_child(robot_handle, 0)
        right_motor_handle = self.get_object_child(robot_handle, 1)
        left_wheel = self.get_object_child(left_motor_handle, 0)
        right_wheel = self.get_object_child(right_motor_handle, 0)
        left_wheel_pos = self.get_object_position(left_wheel)
        right_wheel_pos = self.get_object_position(right_wheel)
        wheel_dir_vector = (left_wheel_pos.x - right_wheel_pos.x, \
                            left_wheel_pos.y - right_wheel_pos.y)
        direction_vector_mod = sqrt(wheel_dir_vector[0] ** 2 \
                                    + wheel_dir_vector[1] ** 2)
        norm_direction_vector = (wheel_dir_vector[0] / direction_vector_mod, \
                                 wheel_dir_vector[1] / direction_vector_mod)
        x_new = norm_direction_vector[1]
        y_new = -norm_direction_vector[0]
        return Point(x_new, y_new)

    def get_object_orientation(self, object_handle, target_pos):
        object_pos = self.get_object_position(object_handle)
        direction_vector = (target_pos.x - object_pos.x, target_pos.y - object_pos.y)
        direction_vector_mod = sqrt(direction_vector[0] ** 2 + direction_vector[1] ** 2)
        norm_direction_vector = (direction_vector[0] / direction_vector_mod, \
                                 direction_vector[1] / direction_vector_mod)
        if norm_direction_vector[1] != 0:
            angle = acos(norm_direction_vector[0]) * 180 / pi * fabs(norm_direction_vector[1]) / \
                norm_direction_vector[1]
        else:
            angle = acos(norm_direction_vector[0]) * 180 / pi
        return angle

    def get_object_quaternion(self, objectHandle):
        retCode, quat = vrep.simxGetObjectQuaternion(self.client_id, objectHandle, -1, vrep.simx_opmode_blocking)
        return quat

    def set_object_quaternion(self, objectHandle, quat):
        emptyBuff = bytearray()
        res, retInts, retFloats, retString, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations', \
                                                                                    vrep.sim_scripttype_childscript, \
                                                                                    'setObjectQuaternion', [objectHandle], \
                                                                                    quat, [], emptyBuff, \
                                                                                    vrep.simx_opmode_blocking)

    def create_mesh(self, row_num, col_num):
        x_min = -4.25
        x_max = 4.25
        y_min = -7.525
        y_max = 0.975
        x_range = x_max - x_min
        y_range = y_max - y_min
        cell_x_size = float(x_range) / float(col_num)
        cell_y_size = float(y_range) / float(row_num)
        cells_list = []
        for row in range(row_num):
            cells_list.append([])
            for col in range(col_num):
                x = x_max - cell_x_size * (0.5 + row)
                y = y_min + cell_y_size * (0.5 + col)
                cell_pos = Point(x, y)
                cells_list[row].append(cell_pos)
        return cells_list

    def end_simulation(self):
        vrep.simxStopSimulation(self.client_id, vrep.simx_opmode_oneshot_wait)
        vrep.simxFinish(-1)


    def set_object_position(self, objectHandle, pos):
        emptyBuff = bytearray()
        res, retInts, retFloats, retString, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations',\
                                                                                  vrep.sim_scripttype_childscript, \
                                                                                  'setObjectPosition', [objectHandle], \
                                                                                  [pos.x, pos.y, 0.2], [], emptyBuff, \
                                                                                  vrep.simx_opmode_blocking)

    def create_dummy(self, pos):
        retCode, dummyHandle = vrep.simxCreateDummy(self.client_id, 0.05, (128, 128, 128), vrep.simx_opmode_blocking)
        self.set_object_position(dummyHandle, pos)

    def get_object_name(self, objectHandle):
        emptyBuff = bytearray()
        res, retInts, retFloats, objName, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations',
                                                                                     vrep.sim_scripttype_childscript,
                                                                                     'getObjectName', [objectHandle], [], [], emptyBuff,
                                                                                     vrep.simx_opmode_blocking)
        return objName[0]

    def get_mars_direction(self, mars_handle):
        left_motor_handle = self.get_object_child(mars_handle, 1)
        right_motor_handle = self.get_object_child(mars_handle, 0)
        left_wheel = self.get_object_child(left_motor_handle, 0)
        right_wheel = self.get_object_child(right_motor_handle, 0)
        left_wheel_pos = self.get_object_position(left_wheel)
        wheel_angle = self.get_object_orientation(right_wheel, left_wheel_pos)
        angle = wheel_angle - 90
        if angle > 180:
            angle = -(360 - angle)
        elif angle < -180:
            angle = 360 + angle
        return angle

    def get_side_points(self, handle):
        dist = 0.12
        robot_pos = self.get_object_position(handle)
        robot_orient = self.get_robot_direction_vector(handle)
        left_x = -robot_orient.y
        left_y = robot_orient.x
        left_point = Point(robot_pos.x + left_x * dist, robot_pos.y + left_y * dist)
        right_x = robot_orient.y
        right_y = -robot_orient.x
        right_point = Point(robot_pos.x + right_x * dist, robot_pos.y + right_y * dist)
        return left_point, right_point

    def get_simulation_time(self):
        emptyBuff = bytearray()
        res, retInts, retFloats, retString, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations', \
                                                                                    vrep.sim_scripttype_childscript, \
                                                                                    'getSimulationTime', [], [], \
                                                                                    [], emptyBuff, vrep.simx_opmode_blocking)
        return retFloats[0]

    def create_dummy_path(self, path):
        for state in path:
            self.create_dummy(state)


def convert_path_to_point2d(path):
    new_path = []
    for state in path:
        new_state = Point(state[0], state[1])
        new_path.append(new_state)
    return new_path

def degrees_to_radians(angle):
    radians = angle * math.pi / 180
    return radians