; Auto-generated. Do not edit!


(cl:in-package dingo_control-msg)


;//! \htmlinclude JointSpace.msg.html

(cl:defclass <JointSpace> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (FL_foot
    :reader FL_foot
    :initarg :FL_foot
    :type dingo_control-msg:Angle
    :initform (cl:make-instance 'dingo_control-msg:Angle))
   (FR_foot
    :reader FR_foot
    :initarg :FR_foot
    :type dingo_control-msg:Angle
    :initform (cl:make-instance 'dingo_control-msg:Angle))
   (RL_foot
    :reader RL_foot
    :initarg :RL_foot
    :type dingo_control-msg:Angle
    :initform (cl:make-instance 'dingo_control-msg:Angle))
   (RR_foot
    :reader RR_foot
    :initarg :RR_foot
    :type dingo_control-msg:Angle
    :initform (cl:make-instance 'dingo_control-msg:Angle)))
)

(cl:defclass JointSpace (<JointSpace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointSpace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointSpace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dingo_control-msg:<JointSpace> is deprecated: use dingo_control-msg:JointSpace instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:header-val is deprecated.  Use dingo_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:seq-val is deprecated.  Use dingo_control-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:stamp-val is deprecated.  Use dingo_control-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:frame_id-val is deprecated.  Use dingo_control-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'FL_foot-val :lambda-list '(m))
(cl:defmethod FL_foot-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:FL_foot-val is deprecated.  Use dingo_control-msg:FL_foot instead.")
  (FL_foot m))

(cl:ensure-generic-function 'FR_foot-val :lambda-list '(m))
(cl:defmethod FR_foot-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:FR_foot-val is deprecated.  Use dingo_control-msg:FR_foot instead.")
  (FR_foot m))

(cl:ensure-generic-function 'RL_foot-val :lambda-list '(m))
(cl:defmethod RL_foot-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:RL_foot-val is deprecated.  Use dingo_control-msg:RL_foot instead.")
  (RL_foot m))

(cl:ensure-generic-function 'RR_foot-val :lambda-list '(m))
(cl:defmethod RR_foot-val ((m <JointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dingo_control-msg:RR_foot-val is deprecated.  Use dingo_control-msg:RR_foot instead.")
  (RR_foot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointSpace>) ostream)
  "Serializes a message object of type '<JointSpace>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'FL_foot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'FR_foot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RL_foot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RR_foot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointSpace>) istream)
  "Deserializes a message object of type '<JointSpace>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'FL_foot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'FR_foot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RL_foot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RR_foot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointSpace>)))
  "Returns string type for a message object of type '<JointSpace>"
  "dingo_control/JointSpace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointSpace)))
  "Returns string type for a message object of type 'JointSpace"
  "dingo_control/JointSpace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointSpace>)))
  "Returns md5sum for a message object of type '<JointSpace>"
  "5e6feb0611ae6db4a60f3877645d6a2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointSpace)))
  "Returns md5sum for a message object of type 'JointSpace"
  "5e6feb0611ae6db4a60f3877645d6a2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointSpace>)))
  "Returns full string definition for message of type '<JointSpace>"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%dingo_control/Angle FL_foot~%dingo_control/Angle FR_foot~%dingo_control/Angle RL_foot~%dingo_control/Angle RR_foot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dingo_control/Angle~%float32 theta1~%float32 theta2~%float32 theta3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointSpace)))
  "Returns full string definition for message of type 'JointSpace"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%dingo_control/Angle FL_foot~%dingo_control/Angle FR_foot~%dingo_control/Angle RL_foot~%dingo_control/Angle RR_foot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: dingo_control/Angle~%float32 theta1~%float32 theta2~%float32 theta3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointSpace>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'FL_foot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'FR_foot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RL_foot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RR_foot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointSpace>))
  "Converts a ROS message object to a list"
  (cl:list 'JointSpace
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':FL_foot (FL_foot msg))
    (cl:cons ':FR_foot (FR_foot msg))
    (cl:cons ':RL_foot (RL_foot msg))
    (cl:cons ':RR_foot (RR_foot msg))
))
