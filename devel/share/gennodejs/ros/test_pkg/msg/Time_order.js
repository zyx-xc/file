// Auto-generated. Do not edit!

// (in-package test_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Time_order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t = null;
      this.number = null;
    }
    else {
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = 0.0;
      }
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Time_order
    // Serialize message field [t]
    bufferOffset = _serializer.float64(obj.t, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.uint8(obj.number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Time_order
    let len;
    let data = new Time_order(null);
    // Deserialize message field [t]
    data.t = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_pkg/Time_order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd8c27f370df30bc9f25b37d76a2c791';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 t
    uint8 number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Time_order(null);
    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = 0.0
    }

    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = 0
    }

    return resolved;
    }
};

module.exports = Time_order;
