 
(defsystem :a-cl-logger
  :description "A logger that sends to multiple destinations in multiple formats. Based on arnesi logger"
  :author "Russ Tyndall <russ@acceleration.net>, Nathan Bird <nathan@acceleration.net>, Ryan Davis <ryan@acceleration.net>"
  :version "1.0.1"
  :licence "BSD"
  :serial t
  :components
  ((:file "packages")
   (:file "utils")
   (:file "log")
   (:file "appenders")
   (:file "helpers"))
  :depends-on (:iterate :symbol-munger :alexandria :cl-interpol :cl-json :local-time
                :cl-json :closer-mop :osicat :exit-hooks)
  :in-order-to ((test-op (test-op :a-cl-logger/tests))))

(defsystem :a-cl-logger/tests
  :description "Tests for: a-cl-logger"
  :author "Russ Tyndall <russ@acceleration.net>, Nathan Bird <nathan@acceleration.net>, Ryan Davis <ryan@acceleration.net>"
  :licence "BSD"
  :serial t
  :components
  ((:file "tests"))
  :depends-on (:lisp-unit2 :a-cl-logger)
  :perform (test-op (op system)
             (uiop:symbol-call :a-cl-logger 'run-tests)))
