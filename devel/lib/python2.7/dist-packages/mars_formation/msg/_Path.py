# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mars_formation/Path.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mars_formation.msg

class Path(genpy.Message):
  _md5sum = "3608af306691de0c868f4fded45490ff"
  _type = "mars_formation/Path"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32     platform_id
Point2d[] path_points
Point2d goal
Point2d final_orient_point

================================================================================
MSG: mars_formation/Point2d
float32 x
float32 y
"""
  __slots__ = ['platform_id','path_points','goal','final_orient_point']
  _slot_types = ['int32','mars_formation/Point2d[]','mars_formation/Point2d','mars_formation/Point2d']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       platform_id,path_points,goal,final_orient_point

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Path, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.platform_id is None:
        self.platform_id = 0
      if self.path_points is None:
        self.path_points = []
      if self.goal is None:
        self.goal = mars_formation.msg.Point2d()
      if self.final_orient_point is None:
        self.final_orient_point = mars_formation.msg.Point2d()
    else:
      self.platform_id = 0
      self.path_points = []
      self.goal = mars_formation.msg.Point2d()
      self.final_orient_point = mars_formation.msg.Point2d()

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
      buff.write(_get_struct_i().pack(self.platform_id))
      length = len(self.path_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.path_points:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
      _x = self
      buff.write(_get_struct_4f().pack(_x.goal.x, _x.goal.y, _x.final_orient_point.x, _x.final_orient_point.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.path_points is None:
        self.path_points = None
      if self.goal is None:
        self.goal = mars_formation.msg.Point2d()
      if self.final_orient_point is None:
        self.final_orient_point = mars_formation.msg.Point2d()
      end = 0
      start = end
      end += 4
      (self.platform_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path_points = []
      for i in range(0, length):
        val1 = mars_formation.msg.Point2d()
        _x = val1
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.path_points.append(val1)
      _x = self
      start = end
      end += 16
      (_x.goal.x, _x.goal.y, _x.final_orient_point.x, _x.final_orient_point.y,) = _get_struct_4f().unpack(str[start:end])
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
      buff.write(_get_struct_i().pack(self.platform_id))
      length = len(self.path_points)
      buff.write(_struct_I.pack(length))
      for val1 in self.path_points:
        _x = val1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
      _x = self
      buff.write(_get_struct_4f().pack(_x.goal.x, _x.goal.y, _x.final_orient_point.x, _x.final_orient_point.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.path_points is None:
        self.path_points = None
      if self.goal is None:
        self.goal = mars_formation.msg.Point2d()
      if self.final_orient_point is None:
        self.final_orient_point = mars_formation.msg.Point2d()
      end = 0
      start = end
      end += 4
      (self.platform_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path_points = []
      for i in range(0, length):
        val1 = mars_formation.msg.Point2d()
        _x = val1
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.path_points.append(val1)
      _x = self
      start = end
      end += 16
      (_x.goal.x, _x.goal.y, _x.final_orient_point.x, _x.final_orient_point.y,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f