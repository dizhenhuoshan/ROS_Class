// Auto-generated. Do not edit!

// (in-package meta.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class nstr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num = null;
      this.str = null;
    }
    else {
      if (initObj.hasOwnProperty('num')) {
        this.num = initObj.num
      }
      else {
        this.num = 0.0;
      }
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nstr
    // Serialize message field [num]
    bufferOffset = _serializer.float64(obj.num, buffer, bufferOffset);
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nstr
    let len;
    let data = new nstr(null);
    // Deserialize message field [num]
    data.num = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'meta/nstr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2a1e50211f32bf06af60c533a1ce29f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 num
    string str
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nstr(null);
    if (msg.num !== undefined) {
      resolved.num = msg.num;
    }
    else {
      resolved.num = 0.0
    }

    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    return resolved;
    }
};

module.exports = nstr;
