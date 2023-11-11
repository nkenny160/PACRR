
(cl:in-package :asdf)

(defsystem "dingo_peripheral_interfacing-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ElectricalMeasurements" :depends-on ("_package_ElectricalMeasurements"))
    (:file "_package_ElectricalMeasurements" :depends-on ("_package"))
  ))