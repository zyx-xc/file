
(cl:in-package :asdf)

(defsystem "test_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Time_order" :depends-on ("_package_Time_order"))
    (:file "_package_Time_order" :depends-on ("_package"))
  ))