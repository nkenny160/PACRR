;; Auto-generated. Do not edit!


(when (boundp 'dingo_control::TaskSpace)
  (if (not (find-package "DINGO_CONTROL"))
    (make-package "DINGO_CONTROL"))
  (shadow 'TaskSpace (find-package "DINGO_CONTROL")))
(unless (find-package "DINGO_CONTROL::TASKSPACE")
  (make-package "DINGO_CONTROL::TASKSPACE"))

(in-package "ROS")
;;//! \htmlinclude TaskSpace.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dingo_control::TaskSpace
  :super ros::object
  :slots (_header _seq _stamp _frame_id _FL_foot _FR_foot _RL_foot _RR_foot ))

(defmethod dingo_control::TaskSpace
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:FL_foot __FL_foot) (instance geometry_msgs::Point :init))
    ((:FR_foot __FR_foot) (instance geometry_msgs::Point :init))
    ((:RL_foot __RL_foot) (instance geometry_msgs::Point :init))
    ((:RR_foot __RR_foot) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _FL_foot __FL_foot)
   (setq _FR_foot __FR_foot)
   (setq _RL_foot __RL_foot)
   (setq _RR_foot __RR_foot)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:FL_foot
   (&rest __FL_foot)
   (if (keywordp (car __FL_foot))
       (send* _FL_foot __FL_foot)
     (progn
       (if __FL_foot (setq _FL_foot (car __FL_foot)))
       _FL_foot)))
  (:FR_foot
   (&rest __FR_foot)
   (if (keywordp (car __FR_foot))
       (send* _FR_foot __FR_foot)
     (progn
       (if __FR_foot (setq _FR_foot (car __FR_foot)))
       _FR_foot)))
  (:RL_foot
   (&rest __RL_foot)
   (if (keywordp (car __RL_foot))
       (send* _RL_foot __RL_foot)
     (progn
       (if __RL_foot (setq _RL_foot (car __RL_foot)))
       _RL_foot)))
  (:RR_foot
   (&rest __RR_foot)
   (if (keywordp (car __RR_foot))
       (send* _RR_foot __RR_foot)
     (progn
       (if __RR_foot (setq _RR_foot (car __RR_foot)))
       _RR_foot)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; geometry_msgs/Point _FL_foot
    (send _FL_foot :serialization-length)
    ;; geometry_msgs/Point _FR_foot
    (send _FR_foot :serialization-length)
    ;; geometry_msgs/Point _RL_foot
    (send _RL_foot :serialization-length)
    ;; geometry_msgs/Point _RR_foot
    (send _RR_foot :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; geometry_msgs/Point _FL_foot
       (send _FL_foot :serialize s)
     ;; geometry_msgs/Point _FR_foot
       (send _FR_foot :serialize s)
     ;; geometry_msgs/Point _RL_foot
       (send _RL_foot :serialize s)
     ;; geometry_msgs/Point _RR_foot
       (send _RR_foot :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _FL_foot
     (send _FL_foot :deserialize buf ptr-) (incf ptr- (send _FL_foot :serialization-length))
   ;; geometry_msgs/Point _FR_foot
     (send _FR_foot :deserialize buf ptr-) (incf ptr- (send _FR_foot :serialization-length))
   ;; geometry_msgs/Point _RL_foot
     (send _RL_foot :deserialize buf ptr-) (incf ptr- (send _RL_foot :serialization-length))
   ;; geometry_msgs/Point _RR_foot
     (send _RR_foot :deserialize buf ptr-) (incf ptr- (send _RR_foot :serialization-length))
   ;;
   self)
  )

(setf (get dingo_control::TaskSpace :md5sum-) "8fc7e9d124f03ecf57877d8ed7db4875")
(setf (get dingo_control::TaskSpace :datatype-) "dingo_control/TaskSpace")
(setf (get dingo_control::TaskSpace :definition-)
      "std_msgs/Header header
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

")



(provide :dingo_control/TaskSpace "8fc7e9d124f03ecf57877d8ed7db4875")


