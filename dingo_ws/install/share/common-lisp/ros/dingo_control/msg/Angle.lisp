; Auto-generated. Do not edit!


(cl:in-package dingo_control-msg)


;//! \htmlinclude Angle.msg.html

(cl:defclass <Angle> (roslisp-msg-protocol:ros-message)
  ((theta1
    :reader theta1
    :initarg :theta1
    :type cl:float
    :initform 0.0)
   (theta2
    :reader theta2
    :initarg :theta2
    :type cl:float
    :initform 0.0)
   (theta3
    :reader theta3
    :initarg :theta3
    :type cl:float
    :initform 0.0))
)

(cl:defclass Angle (<Angle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Angle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Angle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dingo_control-msg:<Angle> is deprecated: use dingo_control-msg:Angle instead.")))

(cl:ensure-generic-function 'theta1-val :lambda-list '(m))
(cl:defmethod theta1-val ((m <Angle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:theta1-val is deprecated.  Use dingo_control-msg:theta1 instead.")
  (theta1 m))

(cl:ensure-generic-function 'theta2-val :lambda-list '(m))
(cl:defmethod theta2-val ((m <Angle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:theta2-val is deprecated.  Use dingo_control-msg:theta2 instead.")
  (theta2 m))

(cl:ensure-generic-function 'theta3-val :lambda-list '(m))
(cl:defmethod theta3-val ((m <Angle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:theta3-val is deprecated.  Use dingo_control-msg:theta3 instead.")
  (theta3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Angle>) ostream)
  "Serializes a message object of type '<Angle>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Angle>) istream)
  "Deserializes a message object of type '<Angle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Angle>)))
  "Returns string type for a message object of type '<Angle>"
  "dingo_control/Angle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Angle)))
  "Returns string type for a message object of type 'Angle"
  "dingo_control/Angle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Angle>)))
  "Returns md5sum for a message object of type '<Angle>"
  "f6b72178218fbe6abc22ec5b1c7a40d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Angle)))
  "Returns md5sum for a message object of type 'Angle"
  "f6b72178218fbe6abc22ec5b1c7a40d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Angle>)))
  "Returns full string definition for message of type '<Angle>"
  (cl:format cl:nil "float32 theta1~%float32 theta2~%float32 theta3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Angle)))
  "Returns full string definition for message of type 'Angle"
  (cl:format cl:nil "float32 theta1~%float32 theta2~%float32 theta3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Angle>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Angle>))
  "Converts a ROS message object to a list"
  (cl:list 'Angle
    (cl:cons ':theta1 (theta1 msg))
    (cl:cons ':theta2 (theta2 msg))
    (cl:cons ':theta3 (theta3 msg))
))
