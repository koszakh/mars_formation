import vrep
import vrep_constants as const
import math
from matplotlib.path import Path
from numpy import array
from Fields_objects import Point
from math import acos, cos, fabs, pow, pi, sin, sqrt
import threading as thr
from time import sleep, time

class Robot(thr.Thread):
    def __init__(self, handle, path, con_port):
        thr.Thread.__init__(self)
        self.handle = handle
        self.path = path
        self.vrep_con = Vrep(con_port)
        self.name = self.vrep_con.get_object_name(self.handle)
        vrep.simxSynchronous(self.vrep_con.client_id, True)
        self.left_motor_handle = self.vrep_con.get_object_child(self.handle, 1)
        self.right_motor_handle = self.vrep_con.get_object_child(self.handle, 0)
        self.direction_point = self.vrep_con.get_object_child(self.handle, 15)

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

    def set_PID_impact(self, old_error, error_sum, goal):
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
        #print(self.name + ': u = ' + str(u) + ', old_error = ' + str(old_error) + ', error_sum = ' + str(error_sum))
        if u > 0:
            left_u = const.MOVEMENT_SPEED - fabs(u)
            right_u = const.MOVEMENT_SPEED
        else:
            left_u = const.MOVEMENT_SPEED
            right_u = const.MOVEMENT_SPEED - fabs(u)
        self.wheel_rotation(left_u, right_u)
        return old_error, error_sum

    def stop(self):
        self.wheel_rotation(0, 0)

    def get_robot_orientation(self):
        dir_point_pos = self.vrep_con.get_object_position(self.direction_point)
        angle = self.vrep_con.get_object_orientation(self.handle, dir_point_pos)
        return angle

    def get_robot_direction_vector(self):
        robot_pos = self.get_robot_position()
        dir_point_pos = self.vrep_con.get_object_position(self.direction_point)
        if dir_point_pos != ():
            dir_vector = (dir_point_pos.x - robot_pos.x, dir_point_pos.y - robot_pos.y)
            vector_mod = sqrt(pow(dir_vector[0], 2) + pow(dir_vector[1], 2))
            norm_dir_vector = (dir_vector[0] / vector_mod, dir_vector[1] / vector_mod)
            return norm_dir_vector
        else:
            raise Exception("dir_point_#pos is Null")
        return ()

    def get_robot_position(self):
        return self.vrep_con.get_object_position(self.handle)

    def turn_in_a_direction(self, direction_vector):
        robot_position = self.vrep_con.get_object_position(self.handle)
        target_position = (robot_position[0] + direction_vector[0], robot_position[1] + direction_vector[1])
        self.turn_to_a_point(target_position)

    def turn_to_a_point(self, point_pos):
        rotation_start_time = self.vrep_con.get_simulation_time()
        goal_angle = self.vrep_con.get_object_orientation(self.handle, point_pos)
        angle = self.get_angle_difference(point_pos)
        angle_difference = self.get_angle_difference(point_pos)
        if angle_difference > 0:
            self.wheel_rotation(-const.ROTATION_SPEED, const.ROTATION_SPEED)
        else:
            self.wheel_rotation(const.ROTATION_SPEED, -const.ROTATION_SPEED)
        while fabs(angle_difference) > const.ANGLE_ERROR:
            angle_difference = self.get_angle_difference(point_pos)
        self.stop()
        rotation_time = self.vrep_con.get_simulation_time() - rotation_start_time
        rotation_speed = angle / rotation_time
        print("{0} turned {1} degrees for {2} seconds. Rotation speed: {3} deg/sec".format(self.name, angle, rotation_time, rotation_speed))

    def take_the_starting_position(self):
        start_pos = Point(self.path[0].start.x, self.path[0].start.y)
        self.vrep_con.set_object_position(self.handle, start_pos)
        self.vrep_con.set_object_quaternion(self.handle, const.INIT_ORIENTATION)

    def run(self):
        print("{0} started".format(self.name))
        waiting_time = 0
        for state in self.path:
            start = Point(state.start.x, state.start.y)
            finish = Point(state.finish.x, state.finish.y)
            if start.get_distance_to(finish) < 0.05:
                waiting_start_time = self.vrep_con.get_simulation_time()
                waiting_time = state.duration * 2
            else:
                angle_difference = self.get_angle_difference(finish)
                if fabs(angle_difference) > const.ANGLE_ERROR:
                    self.turn_to_a_point(finish)
                while self.vrep_con.get_simulation_time() - waiting_start_time < waiting_time:
                    pass
                old_error = 0
                error_sum = 0
                print("{0} waited for {1} seconds.".format(self.name, self.vrep_con.get_simulation_time() - waiting_start_time))
                movement_start_time = self.vrep_con.get_simulation_time()
                dist = self.get_robot_position().get_distance_to(finish)
                while self.get_robot_position().get_distance_to(finish) > const.DISTANCE_ERROR:
                    old_error, error_sum = self.set_PID_impact(old_error, error_sum, finish)
                    #sleep(0.2)
                movement_time = self.vrep_con.get_simulation_time() - movement_start_time
                speed = dist/(movement_time * const.CELL_SIZE)
                print("{0} drove a distance of {1} m for {2} seconds. Speed: {3} cell/sec".format(self.name, dist, movement_time, speed))
            self.stop()
        print("{0} finished".format(self.name))

class Vrep():
    def __init__(self, con_port):
        self.client_id = vrep.simxStart(const.CON_ADDRESS, con_port, True, True, \
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

    def get_object_childs(self, obj_name):
        """
        Function that return handles of object's childs from the V-REP scene.
        This function is useful when the exact number of objects is unknown
        """
        index = 0
        children_list = []
        child = 0
        parent_handle = self.get_object_handle(obj_name)
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

    def get_robot_direction_vector(self, robot_handle):
        direction_point = self.get_object_child(robot_handle, 15)
        robot_position = self.get_object_position(robot_handle)
        dir_point_position = self.get_object_position(direction_point)
        if dir_point_position != ():
            direction_vector = (dir_point_position.x - robot_position.x, \
                                dir_point_position.y - robot_position.y)
            direction_vector_mod = sqrt(direction_vector[0] ** 2 \
                                        + direction_vector[1] ** 2)
            norm_direction_vector = (direction_vector[0] / direction_vector_mod, \
                                     direction_vector[1] / direction_vector_mod)
            return Point(norm_direction_vector[0], norm_direction_vector[1])
        else:
            raise Exception("dir_point_position is Null.")
            return ()

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

    def get_object_name(self, objectHandle):
        emptyBuff = bytearray()
        res, retInts, retFloats, objName, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations',
                                                                                     vrep.sim_scripttype_childscript,
                                                                                     'getObjectName', [objectHandle], [], [], emptyBuff,
                                                                                     vrep.simx_opmode_blocking)
        return objName[0]

    def end_simulation(self):
        vrep.simxStopSimulation(self.client_id, vrep.simx_opmode_oneshot_wait)
        vrep.simxFinish(-1)

    def set_object_quaternion(self, objectHandle, quat):
        emptyBuff = bytearray()
        res, retInts, retFloats, retString, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations', \
                                                                                    vrep.sim_scripttype_childscript, \
                                                                                    'setObjectQuaternion', [objectHandle], \
                                                                                    quat, [], emptyBuff, \
                                                                                    vrep.simx_opmode_blocking)

    def set_object_position(self, objectHandle, pos):
        emptyBuff = bytearray()
        res, retInts, retFloats, retString, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations',\
                                                                                  vrep.sim_scripttype_childscript, \
                                                                                  'setObjectPosition', [objectHandle], \
                                                                                  [pos.x, pos.y, 0.2], [], emptyBuff, \
                                                                                  vrep.simx_opmode_blocking)

    def get_simulation_time(self):
        emptyBuff = bytearray()
        res, retInts, retFloats, retString, retBuffer = vrep.simxCallScriptFunction(self.client_id, 'goalConfigurations', \
                                                                                    vrep.sim_scripttype_childscript, \
                                                                                    'getSimulationTime', [], [], \
                                                                                    [], emptyBuff, vrep.simx_opmode_blocking)
        return retFloats[0]

    def create_dummy(self, pos):
        retCode, dummyHandle = vrep.simxCreateDummy(self.client_id, 0.2, (128, 128, 128), vrep.simx_opmode_blocking)
        sleep(0.5)
        self.set_object_position(dummyHandle, pos)

