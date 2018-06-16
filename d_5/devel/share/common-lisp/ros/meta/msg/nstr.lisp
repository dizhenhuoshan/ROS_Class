; Auto-generated. Do not edit!


(cl:in-package meta-msg)


;//! \htmlinclude nstr.msg.html

(cl:defclass <nstr> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:float
    :initform 0.0)
   (str
    :reader str
    :initarg :str
    :type cl:string
    :initform ""))
)

(cl:defclass nstr (<nstr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nstr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nstr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name meta-msg:<nstr> is deprecated: use meta-msg:nstr instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <nstr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader meta-msg:num-val is deprecated.  Use meta-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'str-val :lambda-list '(m))
(cl:defmethod str-val ((m <nstr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader meta-msg:str-val is deprecated.  Use meta-msg:str instead.")
  (str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nstr>) ostream)
  "Serializes a message object of type '<nstr>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nstr>) istream)
  "Deserializes a message object of type '<nstr>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nstr>)))
  "Returns string type for a message object of type '<nstr>"
  "meta/nstr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nstr)))
  "Returns string type for a message object of type 'nstr"
  "meta/nstr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nstr>)))
  "Returns md5sum for a message object of type '<nstr>"
  "a2a1e50211f32bf06af60c533a1ce29f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nstr)))
  "Returns md5sum for a message object of type 'nstr"
  "a2a1e50211f32bf06af60c533a1ce29f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nstr>)))
  "Returns full string definition for message of type '<nstr>"
  (cl:format cl:nil "float64 num~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nstr)))
  "Returns full string definition for message of type 'nstr"
  (cl:format cl:nil "float64 num~%string str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nstr>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nstr>))
  "Converts a ROS message object to a list"
  (cl:list 'nstr
    (cl:cons ':num (num msg))
    (cl:cons ':str (str msg))
))
