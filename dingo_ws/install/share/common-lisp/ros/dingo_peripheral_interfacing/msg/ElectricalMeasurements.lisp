; Auto-generated. Do not edit!


(cl:in-package dingo_peripheral_interfacing-msg)


;//! \htmlinclude ElectricalMeasurements.msg.html

(cl:defclass <ElectricalMeasurements> (roslisp-msg-protocol:ros-message)
  ((battery_voltage_level
    :reader battery_voltage_level
    :initarg :battery_voltage_level
    :type cl:float
    :initform 0.0)
   (servo_buck_voltage_level
    :reader servo_buck_voltage_level
    :initarg :servo_buck_voltage_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass ElectricalMeasurements (<ElectricalMeasurements>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElectricalMeasurements>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElectricalMeasurements)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dingo_peripheral_interfacing-msg:<ElectricalMeasurements> is deprecated: use dingo_peripheral_interfacing-msg:ElectricalMeasurements instead.")))

(cl:ensure-generic-function 'battery_voltage_level-val :lambda-list '(m))
(cl:defmethod battery_voltage_level-val ((m <ElectricalMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_peripheral_interfacing-msg:battery_voltage_level-val is deprecated.  Use dingo_peripheral_interfacing-msg:battery_voltage_level instead.")
  (battery_voltage_level m))

(cl:ensure-generic-function 'servo_buck_voltage_level-val :lambda-list '(m))
(cl:defmethod servo_buck_voltage_level-val ((m <ElectricalMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_peripheral_interfacing-msg:servo_buck_voltage_level-val is deprecated.  Use dingo_peripheral_interfacing-msg:servo_buck_voltage_level instead.")
  (servo_buck_voltage_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElectricalMeasurements>) ostream)
  "Serializes a message object of type '<ElectricalMeasurements>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'servo_buck_voltage_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElectricalMeasurements>) istream)
  "Deserializes a message object of type '<ElectricalMeasurements>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage_level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'servo_buck_voltage_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElectricalMeasurements>)))
  "Returns string type for a message object of type '<ElectricalMeasurements>"
  "dingo_peripheral_interfacing/ElectricalMeasurements")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElectricalMeasurements)))
  "Returns string type for a message object of type 'ElectricalMeasurements"
  "dingo_peripheral_interfacing/ElectricalMeasurements")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElectricalMeasurements>)))
  "Returns md5sum for a message object of type '<ElectricalMeasurements>"
  "7cd8bf648ee5631ca57dfdbcfb5a9043")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElectricalMeasurements)))
  "Returns md5sum for a message object of type 'ElectricalMeasurements"
  "7cd8bf648ee5631ca57dfdbcfb5a9043")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElectricalMeasurements>)))
  "Returns full string definition for message of type '<ElectricalMeasurements>"
  (cl:format cl:nil "float32 battery_voltage_level~%float32 servo_buck_voltage_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElectricalMeasurements)))
  "Returns full string definition for message of type 'ElectricalMeasurements"
  (cl:format cl:nil "float32 battery_voltage_level~%float32 servo_buck_voltage_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElectricalMeasurements>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElectricalMeasurements>))
  "Converts a ROS message object to a list"
  (cl:list 'ElectricalMeasurements
    (cl:cons ':battery_voltage_level (battery_voltage_level msg))
    (cl:cons ':servo_buck_voltage_level (servo_buck_voltage_level msg))
))
