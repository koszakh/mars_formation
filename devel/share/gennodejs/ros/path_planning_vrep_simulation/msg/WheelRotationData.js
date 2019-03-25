// Auto-generated. Do not edit!

// (in-package path_planning_vrep_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelRotationData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.left_velocity = null;
      this.right_velocity = null;
      this.rotation = null;
      this.goal_reached = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('left_velocity')) {
        this.left_velocity = initObj.left_velocity
      }
      else {
        this.left_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('right_velocity')) {
        this.right_velocity = initObj.right_velocity
      }
      else {
        this.right_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = false;
      }
      if (initObj.hasOwnProperty('goal_reached')) {
        this.goal_reached = initObj.goal_reached
      }
      else {
        this.goal_reached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelRotationData
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [left_velocity]
    bufferOffset = _serializer.float32(obj.left_velocity, buffer, bufferOffset);
    // Serialize message field [right_velocity]
    bufferOffset = _serializer.float32(obj.right_velocity, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = _serializer.bool(obj.rotation, buffer, bufferOffset);
    // Serialize message field [goal_reached]
    bufferOffset = _serializer.bool(obj.goal_reached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelRotationData
    let len;
    let data = new WheelRotationData(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_velocity]
    data.left_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_velocity]
    data.right_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [goal_reached]
    data.goal_reached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_planning_vrep_simulation/WheelRotationData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16794a3f07ee22fddbfe509a3034e43c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    float32 left_velocity
    float32 right_velocity
    bool rotation
    bool goal_reached
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelRotationData(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.left_velocity !== undefined) {
      resolved.left_velocity = msg.left_velocity;
    }
    else {
      resolved.left_velocity = 0.0
    }

    if (msg.right_velocity !== undefined) {
      resolved.right_velocity = msg.right_velocity;
    }
    else {
      resolved.right_velocity = 0.0
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = false
    }

    if (msg.goal_reached !== undefined) {
      resolved.goal_reached = msg.goal_reached;
    }
    else {
      resolved.goal_reached = false
    }

    return resolved;
    }
};

module.exports = WheelRotationData;
