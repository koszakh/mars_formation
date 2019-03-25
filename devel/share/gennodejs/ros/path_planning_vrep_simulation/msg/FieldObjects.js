// Auto-generated. Do not edit!

// (in-package path_planning_vrep_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotData = require('./RobotData.js');
let ObstacleData = require('./ObstacleData.js');
let GoalData = require('./GoalData.js');

//-----------------------------------------------------------

class FieldObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source = null;
      this.robots = null;
      this.obstacles = null;
      this.goals = null;
    }
    else {
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = [];
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
      if (initObj.hasOwnProperty('goals')) {
        this.goals = initObj.goals
      }
      else {
        this.goals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FieldObjects
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    // Serialize message field [robots]
    // Serialize the length for message field [robots]
    bufferOffset = _serializer.uint32(obj.robots.length, buffer, bufferOffset);
    obj.robots.forEach((val) => {
      bufferOffset = RobotData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = ObstacleData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [goals]
    // Serialize the length for message field [goals]
    bufferOffset = _serializer.uint32(obj.goals.length, buffer, bufferOffset);
    obj.goals.forEach((val) => {
      bufferOffset = GoalData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FieldObjects
    let len;
    let data = new FieldObjects(null);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robots]
    // Deserialize array length for message field [robots]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robots = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robots[i] = RobotData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = ObstacleData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [goals]
    // Deserialize array length for message field [goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goals[i] = GoalData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.source.length;
    object.robots.forEach((val) => {
      length += RobotData.getMessageSize(val);
    });
    object.obstacles.forEach((val) => {
      length += ObstacleData.getMessageSize(val);
    });
    object.goals.forEach((val) => {
      length += GoalData.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_planning_vrep_simulation/FieldObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c28964370b5f3547a5bf2d3a6ecb3366';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string         source
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
    Point2d[] corners
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FieldObjects(null);
    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    if (msg.robots !== undefined) {
      resolved.robots = new Array(msg.robots.length);
      for (let i = 0; i < resolved.robots.length; ++i) {
        resolved.robots[i] = RobotData.Resolve(msg.robots[i]);
      }
    }
    else {
      resolved.robots = []
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = ObstacleData.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    if (msg.goals !== undefined) {
      resolved.goals = new Array(msg.goals.length);
      for (let i = 0; i < resolved.goals.length; ++i) {
        resolved.goals[i] = GoalData.Resolve(msg.goals[i]);
      }
    }
    else {
      resolved.goals = []
    }

    return resolved;
    }
};

module.exports = FieldObjects;
