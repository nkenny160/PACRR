
(cl:in-package :asdf)

(defsystem "dingo_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Angle" :depends-on ("_package_Angle"))
    (:file "_package_Angle" :depends-on ("_package"))
    (:file "JointSpace" :depends-on ("_package_JointSpace"))
    (:file "_package_JointSpace" :depends-on ("_package"))
    (:file "TaskSpace" :depends-on ("_package_TaskSpace"))
    (:file "_package_TaskSpace" :depends-on ("_package"))
  ))