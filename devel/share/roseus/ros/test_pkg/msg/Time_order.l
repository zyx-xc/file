;; Auto-generated. Do not edit!


(when (boundp 'test_pkg::Time_order)
  (if (not (find-package "TEST_PKG"))
    (make-package "TEST_PKG"))
  (shadow 'Time_order (find-package "TEST_PKG")))
(unless (find-package "TEST_PKG::TIME_ORDER")
  (make-package "TEST_PKG::TIME_ORDER"))

(in-package "ROS")
;;//! \htmlinclude Time_order.msg.html


(defclass test_pkg::Time_order
  :super ros::object
  :slots (_t _number ))

(defmethod test_pkg::Time_order
  (:init
   (&key
    ((:t __t) 0.0)
    ((:number __number) 0)
    )
   (send-super :init)
   (setq _t (float __t))
   (setq _number (round __number))
   self)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; float64 _t
    8
    ;; uint8 _number
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _number
       (write-byte _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _number
     (setq _number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get test_pkg::Time_order :md5sum-) "dd8c27f370df30bc9f25b37d76a2c791")
(setf (get test_pkg::Time_order :datatype-) "test_pkg/Time_order")
(setf (get test_pkg::Time_order :definition-)
      "float64 t
uint8 number

")



(provide :test_pkg/Time_order "dd8c27f370df30bc9f25b37d76a2c791")


