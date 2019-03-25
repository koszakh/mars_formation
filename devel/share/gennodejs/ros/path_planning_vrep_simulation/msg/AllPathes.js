// Auto-generated. Do not edit!

// (in-package path_planning_vrep_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Path = require('./Path.js');

//-----------------------------------------------------------

class AllPathes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.paths_list = null;
    }
    else {
      if (initObj.hasOwnProperty('paths_list')) {
        this.paths_list = initObj.paths_list
      }
      else {
        this.paths_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AllPathes
    // Serialize message field [paths_list]
    // Serialize the length for message field [paths_list]
    bufferOffset = _serializer.uint32(obj.paths_list.length, buffer, bufferOffset);
    obj.paths_list.forEach((val) => {
      bufferOffset = Path.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AllPathes
    let len;
    let data = new AllPathes(null);
    // Deserialize message field [paths_list]
    // Deserialize array length for message field [paths_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.paths_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.paths_list[i] = Path.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.paths_list.forEach((val) => {
      length += Path.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_planning_vrep_simulation/AllPathes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b16957de463f00ee232f07f8af90b67a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Path[] paths_list
    ================================================================================
    MSG: path_planning_vrep_simulation/Path
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
    const resolved = new AllPathes(null);
    if (msg.paths_list !== undefined) {
      resolved.paths_list = new Array(msg.paths_list.length);
      for (let i = 0; i < resolved.paths_list.length; ++i) {
        resolved.paths_list[i] = Path.Resolve(msg.paths_list[i]);
      }
    }
    else {
      resolved.paths_list = []
    }

    return resolved;
    }
};

module.exports = AllPathes;
