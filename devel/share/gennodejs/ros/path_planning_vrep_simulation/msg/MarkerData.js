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

class MarkerData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.corners = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('corners')) {
        this.corners = initObj.corners
      }
      else {
        this.corners = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerData
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [corners]
    // Serialize the length for message field [corners]
    bufferOffset = _serializer.uint32(obj.corners.length, buffer, bufferOffset);
    obj.corners.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerData
    let len;
    let data = new MarkerData(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [corners]
    // Deserialize array length for message field [corners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.corners.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_planning_vrep_simulation/MarkerData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b730fbe801a4feca407e97eadce6126';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32     id
    Point2d[] corners
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
    const resolved = new MarkerData(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.corners !== undefined) {
      resolved.corners = new Array(msg.corners.length);
      for (let i = 0; i < resolved.corners.length; ++i) {
        resolved.corners[i] = Point2d.Resolve(msg.corners[i]);
      }
    }
    else {
      resolved.corners = []
    }

    return resolved;
    }
};

module.exports = MarkerData;
