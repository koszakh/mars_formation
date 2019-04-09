# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mars_formation/AllPathes.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mars_formation.msg

class AllPathes(genpy.Message):
  _md5sum = "2b2a62638c1a94490c0dfa8d5e80347a"
  _type = "mars_formation/AllPathes"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """Path[] paths_list
================================================================================
MSG: mars_formation/Path
int32     platform_id
Point2d[] path_points
Point2d goal
Point2d final_orient_point

================================================================================
MSG: mars_formation/Point2d
float32 x
float32 y
"""
  __slots__ = ['paths_list']
  _slot_types = ['mars_formation/Path[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       paths_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AllPathes, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.paths_list is None:
        self.paths_list = []
    else:
      self.paths_list = []

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
      length = len(self.paths_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.paths_list:
        buff.write(_get_struct_i().pack(val1.platform_id))
        length = len(val1.path_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.path_points:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v1 = val1.goal
        _x = _v1
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v2 = val1.final_orient_point
        _x = _v2
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.paths_list is None:
        self.paths_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.paths_list = []
      for i in range(0, length):
        val1 = mars_formation.msg.Path()
        start = end
        end += 4
        (val1.platform_id,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.path_points = []
        for i in range(0, length):
          val2 = mars_formation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.path_points.append(val2)
        _v3 = val1.goal
        _x = _v3
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _v4 = val1.final_orient_point
        _x = _v4
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.paths_list.append(val1)
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
      length = len(self.paths_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.paths_list:
        buff.write(_get_struct_i().pack(val1.platform_id))
        length = len(val1.path_points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.path_points:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v5 = val1.goal
        _x = _v5
        buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _v6 = val1.final_orient_point
        _x = _v6
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
      if self.paths_list is None:
        self.paths_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.paths_list = []
      for i in range(0, length):
        val1 = mars_formation.msg.Path()
        start = end
        end += 4
        (val1.platform_id,) = _get_struct_i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.path_points = []
        for i in range(0, length):
          val2 = mars_formation.msg.Point2d()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.path_points.append(val2)
        _v7 = val1.goal
        _x = _v7
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        _v8 = val1.final_orient_point
        _x = _v8
        start = end
        end += 8
        (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
        self.paths_list.append(val1)
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
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f