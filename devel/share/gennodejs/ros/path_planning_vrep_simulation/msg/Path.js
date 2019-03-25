// Auto-generated. Do not edit!

// (in-package path_planning_vrep_simulation.msg)


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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.path_points.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_planning_vrep_simulation/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6585a46cc084ae3da85218f36f44c7f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32     platform_id
    Point2d[] path_points
    
    ================================================================================
    MSG: path_planning_vrep_simulation/Point2d
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

    return resolved;
    }
};

module.exports = Path;
