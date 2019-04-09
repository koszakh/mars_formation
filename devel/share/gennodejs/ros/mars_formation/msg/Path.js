// Auto-generated. Do not edit!

// (in-package mars_formation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2d = require('./Point2d.js');

//-----------------------------------------------------------

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.platform_id = null;
      this.path_points = null;
      this.goal = null;
      this.final_orient_point = null;
    }
    else {
      if (initObj.hasOwnProperty('platform_id')) {
        this.platform_id = initObj.platform_id
      }
      else {
        this.platform_id = 0;
      }
      if (initObj.hasOwnProperty('path_points')) {
        this.path_points = initObj.path_points
      }
      else {
        this.path_points = [];
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new Point2d();
      }
      if (initObj.hasOwnProperty('final_orient_point')) {
        this.final_orient_point = initObj.final_orient_point
      }
      else {
        this.final_orient_point = new Point2d();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [platform_id]
    bufferOffset = _serializer.int32(obj.platform_id, buffer, bufferOffset);
    // Serialize message field [path_points]
    // Serialize the length for message field [path_points]
    bufferOffset = _serializer.uint32(obj.path_points.length, buffer, bufferOffset);
    obj.path_points.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [goal]
    bufferOffset = Point2d.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [final_orient_point]
    bufferOffset = Point2d.serialize(obj.final_orient_point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [platform_id]
    data.platform_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [path_points]
    // Deserialize array length for message field [path_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_points[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [goal]
    data.goal = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [final_orient_point]
    data.final_orient_point = Point2d.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.path_points.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_formation/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3608af306691de0c868f4fded45490ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32     platform_id
    Point2d[] path_points
    Point2d goal
    Point2d final_orient_point
    
    ================================================================================
    MSG: mars_formation/Point2d
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Path(null);
    if (msg.platform_id !== undefined) {
      resolved.platform_id = msg.platform_id;
    }
    else {
      resolved.platform_id = 0
    }

    if (msg.path_points !== undefined) {
      resolved.path_points = new Array(msg.path_points.length);
      for (let i = 0; i < resolved.path_points.length; ++i) {
        resolved.path_points[i] = Point2d.Resolve(msg.path_points[i]);
      }
    }
    else {
      resolved.path_points = []
    }

    if (msg.goal !== undefined) {
      resolved.goal = Point2d.Resolve(msg.goal)
    }
    else {
      resolved.goal = new Point2d()
    }

    if (msg.final_orient_point !== undefined) {
      resolved.final_orient_point = Point2d.Resolve(msg.final_orient_point)
    }
    else {
      resolved.final_orient_point = new Point2d()
    }

    return resolved;
    }
};

module.exports = Path;
