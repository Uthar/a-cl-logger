 
(defsystem :a-cl-logger-logstash
  :description "Load the logstash appender for a-cl-logger"
  :author "Russ Tyndall <russ@acceleration.net>, Nathan Bird <nathan@acceleration.net>, Ryan Davis <ryan@acceleration.net>"
  :licence "BSD"
  :serial t
  :components
  ((:file "logstash"))
  :depends-on (:a-cl-logger :zmq :cl-json))
