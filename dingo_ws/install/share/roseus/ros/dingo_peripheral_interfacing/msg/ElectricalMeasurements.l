;; Auto-generated. Do not edit!


(when (boundp 'dingo_peripheral_interfacing::ElectricalMeasurements)
  (if (not (find-package "DINGO_PERIPHERAL_INTERFACING"))
    (make-package "DINGO_PERIPHERAL_INTERFACING"))
  (shadow 'ElectricalMeasurements (find-package "DINGO_PERIPHERAL_INTERFACING")))
(unless (find-package "DINGO_PERIPHERAL_INTERFACING::ELECTRICALMEASUREMENTS")
  (make-package "DINGO_PERIPHERAL_INTERFACING::ELECTRICALMEASUREMENTS"))

(in-package "ROS")
;;//! \htmlinclude ElectricalMeasurements.msg.html


(defclass dingo_peripheral_interfacing::ElectricalMeasurements
  :super ros::object
  :slots (_battery_voltage_level _servo_buck_voltage_level ))

(defmethod dingo_peripheral_interfacing::ElectricalMeasurements
  (:init
   (&key
    ((:battery_voltage_level __battery_voltage_level) 0.0)
    ((:servo_buck_voltage_level __servo_buck_voltage_level) 0.0)
    )
   (send-super :init)
   (setq _battery_voltage_level (float __battery_voltage_level))
   (setq _servo_buck_voltage_level (float __servo_buck_voltage_level))
   self)
  (:battery_voltage_level
   (&optional __battery_voltage_level)
   (if __battery_voltage_level (setq _battery_voltage_level __battery_voltage_level)) _battery_voltage_level)
  (:servo_buck_voltage_level
   (&optional __servo_buck_voltage_level)
   (if __servo_buck_voltage_level (setq _servo_buck_voltage_level __servo_buck_voltage_level)) _servo_buck_voltage_level)
  (:serialization-length
   ()
   (+
    ;; float32 _battery_voltage_level
    4
    ;; float32 _servo_buck_voltage_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _battery_voltage_level
       (sys::poke _battery_voltage_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _servo_buck_voltage_level
       (sys::poke _servo_buck_voltage_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _battery_voltage_level
     (setq _battery_voltage_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _servo_buck_voltage_level
     (setq _servo_buck_voltage_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dingo_peripheral_interfacing::ElectricalMeasurements :md5sum-) "7cd8bf648ee5631ca57dfdbcfb5a9043")
(setf (get dingo_peripheral_interfacing::ElectricalMeasurements :datatype-) "dingo_peripheral_interfacing/ElectricalMeasurements")
(setf (get dingo_peripheral_interfacing::ElectricalMeasurements :definition-)
      "float32 battery_voltage_level
float32 servo_buck_voltage_level

")



(provide :dingo_peripheral_interfacing/ElectricalMeasurements "7cd8bf648ee5631ca57dfdbcfb5a9043")


