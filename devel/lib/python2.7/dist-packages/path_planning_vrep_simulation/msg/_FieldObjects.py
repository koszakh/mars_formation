# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from path_planning_vrep_simulation/FieldObjects.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import path_planning_vrep_simulation.msg

class FieldObjects(genpy.Message):
  _md5sum = "c28964370b5f3547a5bf2d3a6ecb3366"
  _type = "path_planning_vrep_simulation/FieldObjects"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string         source
RobotData[]    robots
ObstacleData[] obstacles
GoalData[]     goals
================================================================================
MSG: path_planning_vrep_simulation/RobotData
int32     id
Point2d   position
float32   direction
Point2d[] corners
XML_PATH path
bool      path_created
Step   actual_point
Step   next_point
float32     angle_to_actual_point
int32     actual_angle
int32[]   sector
float32 old_error
float32 error_sum

bool      on_finish
bool      move
bool      rotation
bool stop

================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

================================================================================
MSG: path_planning_vrep_simulation/XML_PATH
int32  robot_id
Step[] path

================================================================================
MSG: path_planning_vrep_simulation/Step
int32   number
Point2d start
Point2d finish
float32 duration
================================================================================
MSG: path_planning_vrep_simulation/ObstacleData
int32     id
Point2d   center
Point2d[] corners
================================================================================
MSG: path_planning_vrep_simulation/GoalData
int32     id
Point2d   center
Point2d[] corners"""
  __slots__ = ['source','robots','obstacles','goals']
  _slot_types = ['string','path_planning_vrep_simulation/RobotData[]','path_planning_vrep_simulation/ObstacleData[]','path_planning_vrep_simulation/GoalData[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       source,robots,obstacles,goals

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FieldObjects, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.source is None:
        self.source = ''
      if self.robots is None:
        self.robots = []
      if self.obstacles is None:
        self.obstacles = []
      if self.goals is None:
        self.goals = []
    else:
      self.source = ''
      self.robots = []
      self.obstacles = []
      self.goals = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.source
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.robots:
        buff.write(_get_struct_i().pack(val1.id))
        _v1 = val1.position
        _x = _v1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        buff.write(_get_struct_f().pack(val1.direction))
        length = len(val1.corners)
        buff.write(_struct_I.pack(length))
        for val2 in val1.corners:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v2 = val1.path
        buff.write(_get_struct_i().pack(_v2.robot_id))
        length = len(_v2.path)
        buff.write(_struct_I.pack(length))
        for val3 in _v2.path:
          buff.write(_get_struct_i().pack(val3.number))
          _v3 = val3.start
          _x = _v3
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
          _v4 = val3.finish
          _x = _v4
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
          buff.write(_get_struct_f().pack(val3.duration))
        buff.write(_get_struct_B().pack(val1.path_created))
        _v5 = val1.actual_point
        buff.write(_get_struct_i().pack(_v5.number))
        _v6 = _v5.start
        _x = _v6
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v7 = _v5.finish
        _x = _v7
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        buff.write(_get_struct_f().pack(_v5.duration))
        _v8 = val1.next_point
        buff.write(_get_struct_i().pack(_v8.number))
        _v9 = _v8.start
        _x = _v9
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v10 = _v8.finish
        _x = _v10
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        buff.write(_get_struct_f().pack(_v8.duration))
        _x = val1
        buff.write(_get_struct_fi().pack(_x.angle_to_actual_point, _x.actual_angle))
        length = len(val1.sector)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(struct.pack(pattern, *val1.sector))
        _x = val1
        buff.write(_get_struct_2f4B().pack(_x.old_error, _x.error_sum, _x.on_finish, _x.move, _x.rotation, _x.stop))
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        buff.write(_get_struct_i().pack(val1.id))
        _v11 = val1.center
        _x = _v11
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        length = len(val1.corners)
        buff.write(_struct_I.pack(length))
        for val2 in val1.corners:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
      length = len(self.goals)
      buff.write(_struct_I.pack(length))
      for val1 in self.goals:
        buff.write(_get_struct_i().pack(val1.id))
        _v12 = val1.center
        _x = _v12
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        length = len(val1.corners)
        buff.write(_struct_I.pack(length))
        for val2 in val1.corners:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.robots is None:
        self.robots = None
      if self.obstacles is None:
        self.obstacles = None
      if self.goals is None:
        self.goals = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.source = str[start:end].decode('utf-8')
      else:
        self.source = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robots = []
      for i in range(0, length):
        val1 = path_planning_vrep_simulation.msg.RobotData()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v13 = val1.position
        _x = _v13
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (val1.direction,) = _get_struct_f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.corners = []
        for i in range(0, length):
          val2 = path_planning_vrep_simulation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.corners.append(val2)
        _v14 = val1.path
        start = end
        end += 4
        (_v14.robot_id,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v14.path = []
        for i in range(0, length):
          val3 = path_planning_vrep_simulation.msg.Step()
          start = end
          end += 4
          (val3.number,) = _get_struct_i().unpack(str[start:end])
          _v15 = val3.start
          _x = _v15
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          _v16 = val3.finish
          _x = _v16
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          start = end
          end += 4
          (val3.duration,) = _get_struct_f().unpack(str[start:end])
          _v14.path.append(val3)
        start = end
        end += 1
        (val1.path_created,) = _get_struct_B().unpack(str[start:end])
        val1.path_created = bool(val1.path_created)
        _v17 = val1.actual_point
        start = end
        end += 4
        (_v17.number,) = _get_struct_i().unpack(str[start:end])
        _v18 = _v17.start
        _x = _v18
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _v19 = _v17.finish
        _x = _v19
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (_v17.duration,) = _get_struct_f().unpack(str[start:end])
        _v20 = val1.next_point
        start = end
        end += 4
        (_v20.number,) = _get_struct_i().unpack(str[start:end])
        _v21 = _v20.start
        _x = _v21
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _v22 = _v20.finish
        _x = _v22
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (_v20.duration,) = _get_struct_f().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.angle_to_actual_point, _x.actual_angle,) = _get_struct_fi().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        end += struct.calcsize(pattern)
        val1.sector = struct.unpack(pattern, str[start:end])
        _x = val1
        start = end
        end += 12
        (_x.old_error, _x.error_sum, _x.on_finish, _x.move, _x.rotation, _x.stop,) = _get_struct_2f4B().unpack(str[start:end])
        val1.on_finish = bool(val1.on_finish)
        val1.move = bool(val1.move)
        val1.rotation = bool(val1.rotation)
        val1.stop = bool(val1.stop)
        self.robots.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = path_planning_vrep_simulation.msg.ObstacleData()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v23 = val1.center
        _x = _v23
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.corners = []
        for i in range(0, length):
          val2 = path_planning_vrep_simulation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.corners.append(val2)
        self.obstacles.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.goals = []
      for i in range(0, length):
        val1 = path_planning_vrep_simulation.msg.GoalData()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v24 = val1.center
        _x = _v24
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.corners = []
        for i in range(0, length):
          val2 = path_planning_vrep_simulation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.corners.append(val2)
        self.goals.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.source
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.robots)
      buff.write(_struct_I.pack(length))
      for val1 in self.robots:
        buff.write(_get_struct_i().pack(val1.id))
        _v25 = val1.position
        _x = _v25
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        buff.write(_get_struct_f().pack(val1.direction))
        length = len(val1.corners)
        buff.write(_struct_I.pack(length))
        for val2 in val1.corners:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v26 = val1.path
        buff.write(_get_struct_i().pack(_v26.robot_id))
        length = len(_v26.path)
        buff.write(_struct_I.pack(length))
        for val3 in _v26.path:
          buff.write(_get_struct_i().pack(val3.number))
          _v27 = val3.start
          _x = _v27
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
          _v28 = val3.finish
          _x = _v28
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
          buff.write(_get_struct_f().pack(val3.duration))
        buff.write(_get_struct_B().pack(val1.path_created))
        _v29 = val1.actual_point
        buff.write(_get_struct_i().pack(_v29.number))
        _v30 = _v29.start
        _x = _v30
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v31 = _v29.finish
        _x = _v31
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        buff.write(_get_struct_f().pack(_v29.duration))
        _v32 = val1.next_point
        buff.write(_get_struct_i().pack(_v32.number))
        _v33 = _v32.start
        _x = _v33
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v34 = _v32.finish
        _x = _v34
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        buff.write(_get_struct_f().pack(_v32.duration))
        _x = val1
        buff.write(_get_struct_fi().pack(_x.angle_to_actual_point, _x.actual_angle))
        length = len(val1.sector)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(val1.sector.tostring())
        _x = val1
        buff.write(_get_struct_2f4B().pack(_x.old_error, _x.error_sum, _x.on_finish, _x.move, _x.rotation, _x.stop))
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        buff.write(_get_struct_i().pack(val1.id))
        _v35 = val1.center
        _x = _v35
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        length = len(val1.corners)
        buff.write(_struct_I.pack(length))
        for val2 in val1.corners:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
      length = len(self.goals)
      buff.write(_struct_I.pack(length))
      for val1 in self.goals:
        buff.write(_get_struct_i().pack(val1.id))
        _v36 = val1.center
        _x = _v36
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        length = len(val1.corners)
        buff.write(_struct_I.pack(length))
        for val2 in val1.corners:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.robots is None:
        self.robots = None
      if self.obstacles is None:
        self.obstacles = None
      if self.goals is None:
        self.goals = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.source = str[start:end].decode('utf-8')
      else:
        self.source = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.robots = []
      for i in range(0, length):
        val1 = path_planning_vrep_simulation.msg.RobotData()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v37 = val1.position
        _x = _v37
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (val1.direction,) = _get_struct_f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.corners = []
        for i in range(0, length):
          val2 = path_planning_vrep_simulation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.corners.append(val2)
        _v38 = val1.path
        start = end
        end += 4
        (_v38.robot_id,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        _v38.path = []
        for i in range(0, length):
          val3 = path_planning_vrep_simulation.msg.Step()
          start = end
          end += 4
          (val3.number,) = _get_struct_i().unpack(str[start:end])
          _v39 = val3.start
          _x = _v39
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          _v40 = val3.finish
          _x = _v40
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          start = end
          end += 4
          (val3.duration,) = _get_struct_f().unpack(str[start:end])
          _v38.path.append(val3)
        start = end
        end += 1
        (val1.path_created,) = _get_struct_B().unpack(str[start:end])
        val1.path_created = bool(val1.path_created)
        _v41 = val1.actual_point
        start = end
        end += 4
        (_v41.number,) = _get_struct_i().unpack(str[start:end])
        _v42 = _v41.start
        _x = _v42
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _v43 = _v41.finish
        _x = _v43
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (_v41.duration,) = _get_struct_f().unpack(str[start:end])
        _v44 = val1.next_point
        start = end
        end += 4
        (_v44.number,) = _get_struct_i().unpack(str[start:end])
        _v45 = _v44.start
        _x = _v45
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _v46 = _v44.finish
        _x = _v46
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (_v44.duration,) = _get_struct_f().unpack(str[start:end])
        _x = val1
        start = end
        end += 8
        (_x.angle_to_actual_point, _x.actual_angle,) = _get_struct_fi().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        end += struct.calcsize(pattern)
        val1.sector = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
        _x = val1
        start = end
        end += 12
        (_x.old_error, _x.error_sum, _x.on_finish, _x.move, _x.rotation, _x.stop,) = _get_struct_2f4B().unpack(str[start:end])
        val1.on_finish = bool(val1.on_finish)
        val1.move = bool(val1.move)
        val1.rotation = bool(val1.rotation)
        val1.stop = bool(val1.stop)
        self.robots.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = path_planning_vrep_simulation.msg.ObstacleData()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v47 = val1.center
        _x = _v47
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.corners = []
        for i in range(0, length):
          val2 = path_planning_vrep_simulation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.corners.append(val2)
        self.obstacles.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.goals = []
      for i in range(0, length):
        val1 = path_planning_vrep_simulation.msg.GoalData()
        start = end
        end += 4
        (val1.id,) = _get_struct_i().unpack(str[start:end])
        _v48 = val1.center
        _x = _v48
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.corners = []
        for i in range(0, length):
          val2 = path_planning_vrep_simulation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.corners.append(val2)
        self.goals.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_2f4B = None
def _get_struct_2f4B():
    global _struct_2f4B
    if _struct_2f4B is None:
        _struct_2f4B = struct.Struct("<2f4B")
    return _struct_2f4B
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_fi = None
def _get_struct_fi():
    global _struct_fi
    if _struct_fi is None:
        _struct_fi = struct.Struct("<fi")
    return _struct_fi
