// Auto-generated. Do not edit!

// (in-package dingo_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TaskSpace {
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
        this.FL_foot = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('FR_foot')) {
        this.FR_foot = initObj.FR_foot
      }
      else {
        this.FR_foot = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('RL_foot')) {
        this.RL_foot = initObj.RL_foot
      }
      else {
        this.RL_foot = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('RR_foot')) {
        this.RR_foot = initObj.RR_foot
      }
      else {
        this.RR_foot = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskSpace
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [FL_foot]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.FL_foot, buffer, bufferOffset);
    // Serialize message field [FR_foot]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.FR_foot, buffer, bufferOffset);
    // Serialize message field [RL_foot]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.RL_foot, buffer, bufferOffset);
    // Serialize message field [RR_foot]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.RR_foot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskSpace
    let len;
    let data = new TaskSpace(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [FL_foot]
    data.FL_foot = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [FR_foot]
    data.FR_foot = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [RL_foot]
    data.RL_foot = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [RR_foot]
    data.RR_foot = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.frame_id);
    return length + 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dingo_control/TaskSpace';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fc7e9d124f03ecf57877d8ed7db4875';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    geometry_msgs/Point FL_foot
    geometry_msgs/Point FR_foot
    geometry_msgs/Point RL_foot
    geometry_msgs/Point RR_foot
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskSpace(null);
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
      resolved.FL_foot = geometry_msgs.msg.Point.Resolve(msg.FL_foot)
    }
    else {
      resolved.FL_foot = new geometry_msgs.msg.Point()
    }

    if (msg.FR_foot !== undefined) {
      resolved.FR_foot = geometry_msgs.msg.Point.Resolve(msg.FR_foot)
    }
    else {
      resolved.FR_foot = new geometry_msgs.msg.Point()
    }

    if (msg.RL_foot !== undefined) {
      resolved.RL_foot = geometry_msgs.msg.Point.Resolve(msg.RL_foot)
    }
    else {
      resolved.RL_foot = new geometry_msgs.msg.Point()
    }

    if (msg.RR_foot !== undefined) {
      resolved.RR_foot = geometry_msgs.msg.Point.Resolve(msg.RR_foot)
    }
    else {
      resolved.RR_foot = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = TaskSpace;
