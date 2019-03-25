; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude Step.msg.html

(cl:defclass <Step> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type path_planning_vrep_simulation-msg:Point2d
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))
   (finish
    :reader finish
    :initarg :finish
    :type path_planning_vrep_simulation-msg:Point2d
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Step (<Step>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Step>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Step)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<Step> is deprecated: use path_planning_vrep_simulation-msg:Step instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:number-val is deprecated.  Use path_planning_vrep_simulation-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:start-val is deprecated.  Use path_planning_vrep_simulation-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'finish-val :lambda-list '(m))
(cl:defmethod finish-val ((m <Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:finish-val is deprecated.  Use path_planning_vrep_simulation-msg:finish instead.")
  (finish m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Step>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:duration-val is deprecated.  Use path_planning_vrep_simulation-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Step>) ostream)
  "Serializes a message object of type '<Step>"
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'finish) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Step>) istream)
  "Deserializes a message object of type '<Step>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'finish) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Step>)))
  "Returns string type for a message object of type '<Step>"
  "path_planning_vrep_simulation/Step")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Step)))
  "Returns string type for a message object of type 'Step"
  "path_planning_vrep_simulation/Step")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Step>)))
  "Returns md5sum for a message object of type '<Step>"
  "e1ec2cd1e2aeecbfde1f919967aaf705")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Step)))
  "Returns md5sum for a message object of type 'Step"
  "e1ec2cd1e2aeecbfde1f919967aaf705")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Step>)))
  "Returns full string definition for message of type '<Step>"
  (cl:format cl:nil "int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Step)))
  "Returns full string definition for message of type 'Step"
  (cl:format cl:nil "int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Step>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'finish))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Step>))
  "Converts a ROS message object to a list"
  (cl:list 'Step
    (cl:cons ':number (number msg))
    (cl:cons ':start (start msg))
    (cl:cons ':finish (finish msg))
    (cl:cons ':duration (duration msg))
))
