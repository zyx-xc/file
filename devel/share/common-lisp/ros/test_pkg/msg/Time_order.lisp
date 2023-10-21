; Auto-generated. Do not edit!


(cl:in-package test_pkg-msg)


;//! \htmlinclude Time_order.msg.html

(cl:defclass <Time_order> (roslisp-msg-protocol:ros-message)
  ((t
    :reader t
    :initarg :t
    :type cl:float
    :initform 0.0)
   (number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Time_order (<Time_order>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Time_order>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Time_order)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test_pkg-msg:<Time_order> is deprecated: use test_pkg-msg:Time_order instead.")))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <Time_order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-msg:t-val is deprecated.  Use test_pkg-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <Time_order>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test_pkg-msg:number-val is deprecated.  Use test_pkg-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Time_order>) ostream)
  "Serializes a message object of type '<Time_order>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Time_order>) istream)
  "Deserializes a message object of type '<Time_order>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Time_order>)))
  "Returns string type for a message object of type '<Time_order>"
  "test_pkg/Time_order")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Time_order)))
  "Returns string type for a message object of type 'Time_order"
  "test_pkg/Time_order")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Time_order>)))
  "Returns md5sum for a message object of type '<Time_order>"
  "dd8c27f370df30bc9f25b37d76a2c791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Time_order)))
  "Returns md5sum for a message object of type 'Time_order"
  "dd8c27f370df30bc9f25b37d76a2c791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Time_order>)))
  "Returns full string definition for message of type '<Time_order>"
  (cl:format cl:nil "float64 t~%uint8 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Time_order)))
  "Returns full string definition for message of type 'Time_order"
  (cl:format cl:nil "float64 t~%uint8 number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Time_order>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Time_order>))
  "Converts a ROS message object to a list"
  (cl:list 'Time_order
    (cl:cons ':t (t msg))
    (cl:cons ':number (number msg))
))
