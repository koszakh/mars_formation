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
let XML_PATH = require('./XML_PATH.js');
let Step = require('./Step.js');

//-----------------------------------------------------------

class RobotData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.direction = null;
      this.corners = null;
      this.path = null;
      this.path_created = null;
      this.actual_point = null;
      this.next_point = null;
      this.angle_to_actual_point = null;
      this.actual_angle = null;
      this.sector = null;
      this.old_error = null;
      this.error_sum = null;
      this.on_finish = null;
      this.move = null;
      this.rotation = null;
      this.stop = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2d();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0.0;
      }
      if (initObj.hasOwnProperty('corners')) {
        this.corners = initObj.corners
      }
      else {
        this.corners = [];
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new XML_PATH();
      }
      if (initObj.hasOwnProperty('path_created')) {
        this.path_created = initObj.path_created
      }
      else {
        this.path_created = false;
      }
      if (initObj.hasOwnProperty('actual_point')) {
        this.actual_point = initObj.actual_point
      }
      else {
        this.actual_point = new Step();
      }
      if (initObj.hasOwnProperty('next_point')) {
        this.next_point = initObj.next_point
      }
      else {
        this.next_point = new Step();
      }
      if (initObj.hasOwnProperty('angle_to_actual_point')) {
        this.angle_to_actual_point = initObj.angle_to_actual_point
      }
      else {
        this.angle_to_actual_point = 0.0;
      }
      if (initObj.hasOwnProperty('actual_angle')) {
        this.actual_angle = initObj.actual_angle
      }
      else {
        this.actual_angle = 0;
      }
      if (initObj.hasOwnProperty('sector')) {
        this.sector = initObj.sector
      }
      else {
        this.sector = [];
      }
      if (initObj.hasOwnProperty('old_error')) {
        this.old_error = initObj.old_error
      }
      else {
        this.old_error = 0.0;
      }
      if (initObj.hasOwnProperty('error_sum')) {
        this.error_sum = initObj.error_sum
      }
      else {
        this.error_sum = 0.0;
      }
      if (initObj.hasOwnProperty('on_finish')) {
        this.on_finish = initObj.on_finish
      }
      else {
        this.on_finish = false;
      }
      if (initObj.hasOwnProperty('move')) {
        this.move = initObj.move
      }
      else {
        this.move = false;
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = false;
      }
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotData
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point2d.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.float32(obj.direction, buffer, bufferOffset);
    // Serialize message field [corners]
    // Serialize the length for message field [corners]
    bufferOffset = _serializer.uint32(obj.corners.length, buffer, bufferOffset);
    obj.corners.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [path]
    bufferOffset = XML_PATH.serialize(obj.path, buffer, bufferOffset);
    // Serialize message field [path_created]
    bufferOffset = _serializer.bool(obj.path_created, buffer, bufferOffset);
    // Serialize message field [actual_point]
    bufferOffset = Step.serialize(obj.actual_point, buffer, bufferOffset);
    // Serialize message field [next_point]
    bufferOffset = Step.serialize(obj.next_point, buffer, bufferOffset);
    // Serialize message field [angle_to_actual_point]
    bufferOffset = _serializer.float32(obj.angle_to_actual_point, buffer, bufferOffset);
    // Serialize message field [actual_angle]
    bufferOffset = _serializer.int32(obj.actual_angle, buffer, bufferOffset);
    // Serialize message field [sector]
    bufferOffset = _arraySerializer.int32(obj.sector, buffer, bufferOffset, null);
    // Serialize message field [old_error]
    bufferOffset = _serializer.float32(obj.old_error, buffer, bufferOffset);
    // Serialize message field [error_sum]
    bufferOffset = _serializer.float32(obj.error_sum, buffer, bufferOffset);
    // Serialize message field [on_finish]
    bufferOffset = _serializer.bool(obj.on_finish, buffer, bufferOffset);
    // Serialize message field [move]
    bufferOffset = _serializer.bool(obj.move, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = _serializer.bool(obj.rotation, buffer, bufferOffset);
    // Serialize message field [stop]
    bufferOffset = _serializer.bool(obj.stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotData
    let len;
    let data = new RobotData(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [corners]
    // Deserialize array length for message field [corners]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corners = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corners[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [path]
    data.path = XML_PATH.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_created]
    data.path_created = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [actual_point]
    data.actual_point = Step.deserialize(buffer, bufferOffset);
    // Deserialize message field [next_point]
    data.next_point = Step.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_to_actual_point]
    data.angle_to_actual_point = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [actual_angle]
    data.actual_angle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sector]
    data.sector = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [old_error]
    data.old_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_sum]
    data.error_sum = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [on_finish]
    data.on_finish = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [move]
    data.move = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop]
    data.stop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.corners.length;
    length += XML_PATH.getMessageSize(object.path);
    length += 4 * object.sector.length;
    return length + 93;
  }

  static datatype() {
    // Returns string type for a message object
    return 'path_planning_vrep_simulation/RobotData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66fdc63dce521c82c173fa4aa91bfc51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotData(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = Point2d.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2d()
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0.0
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

    if (msg.path !== undefined) {
      resolved.path = XML_PATH.Resolve(msg.path)
    }
    else {
      resolved.path = new XML_PATH()
    }

    if (msg.path_created !== undefined) {
      resolved.path_created = msg.path_created;
    }
    else {
      resolved.path_created = false
    }

    if (msg.actual_point !== undefined) {
      resolved.actual_point = Step.Resolve(msg.actual_point)
    }
    else {
      resolved.actual_point = new Step()
    }

    if (msg.next_point !== undefined) {
      resolved.next_point = Step.Resolve(msg.next_point)
    }
    else {
      resolved.next_point = new Step()
    }

    if (msg.angle_to_actual_point !== undefined) {
      resolved.angle_to_actual_point = msg.angle_to_actual_point;
    }
    else {
      resolved.angle_to_actual_point = 0.0
    }

    if (msg.actual_angle !== undefined) {
      resolved.actual_angle = msg.actual_angle;
    }
    else {
      resolved.actual_angle = 0
    }

    if (msg.sector !== undefined) {
      resolved.sector = msg.sector;
    }
    else {
      resolved.sector = []
    }

    if (msg.old_error !== undefined) {
      resolved.old_error = msg.old_error;
    }
    else {
      resolved.old_error = 0.0
    }

    if (msg.error_sum !== undefined) {
      resolved.error_sum = msg.error_sum;
    }
    else {
      resolved.error_sum = 0.0
    }

    if (msg.on_finish !== undefined) {
      resolved.on_finish = msg.on_finish;
    }
    else {
      resolved.on_finish = false
    }

    if (msg.move !== undefined) {
      resolved.move = msg.move;
    }
    else {
      resolved.move = false
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = false
    }

    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = false
    }

    return resolved;
    }
};

module.exports = RobotData;
