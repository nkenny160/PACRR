// Auto-generated. Do not edit!

// (in-package dingo_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Angle = require('./Angle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointSpace {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.FL_foot = null;
      this.FR_foot = null;
      this.RL_foot = null;
      this.RR_foot = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('FL_foot')) {
        this.FL_foot = initObj.FL_foot
      }
      else {
        this.FL_foot = new Angle();
      }
      if (initObj.hasOwnProperty('FR_foot')) {
        this.FR_foot = initObj.FR_foot
      }
      else {
        this.FR_foot = new Angle();
      }
      if (initObj.hasOwnProperty('RL_foot')) {
        this.RL_foot = initObj.RL_foot
      }
      else {
        this.RL_foot = new Angle();
      }
      if (initObj.hasOwnProperty('RR_foot')) {
        this.RR_foot = initObj.RR_foot
      }
      else {
        this.RR_foot = new Angle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointSpace
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [FL_foot]
    bufferOffset = Angle.serialize(obj.FL_foot, buffer, bufferOffset);
    // Serialize message field [FR_foot]
    bufferOffset = Angle.serialize(obj.FR_foot, buffer, bufferOffset);
    // Serialize message field [RL_foot]
    bufferOffset = Angle.serialize(obj.RL_foot, buffer, bufferOffset);
    // Serialize message field [RR_foot]
    bufferOffset = Angle.serialize(obj.RR_foot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointSpace
    let len;
    let data = new JointSpace(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [FL_foot]
    data.FL_foot = Angle.deserialize(buffer, bufferOffset);
    // Deserialize message field [FR_foot]
    data.FR_foot = Angle.deserialize(buffer, bufferOffset);
    // Deserialize message field [RL_foot]
    data.RL_foot = Angle.deserialize(buffer, bufferOffset);
    // Deserialize message field [RR_foot]
    data.RR_foot = Angle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.frame_id);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dingo_control/JointSpace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e6feb0611ae6db4a60f3877645d6a2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    dingo_control/Angle FL_foot
    dingo_control/Angle FR_foot
    dingo_control/Angle RL_foot
    dingo_control/Angle RR_foot
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: dingo_control/Angle
    float32 theta1
    float32 theta2
    float32 theta3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointSpace(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.FL_foot !== undefined) {
      resolved.FL_foot = Angle.Resolve(msg.FL_foot)
    }
    else {
      resolved.FL_foot = new Angle()
    }

    if (msg.FR_foot !== undefined) {
      resolved.FR_foot = Angle.Resolve(msg.FR_foot)
    }
    else {
      resolved.FR_foot = new Angle()
    }

    if (msg.RL_foot !== undefined) {
      resolved.RL_foot = Angle.Resolve(msg.RL_foot)
    }
    else {
      resolved.RL_foot = new Angle()
    }

    if (msg.RR_foot !== undefined) {
      resolved.RR_foot = Angle.Resolve(msg.RR_foot)
    }
    else {
      resolved.RR_foot = new Angle()
    }

    return resolved;
    }
};

module.exports = JointSpace;
