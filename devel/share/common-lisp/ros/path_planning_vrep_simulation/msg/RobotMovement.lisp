; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude RobotMovement.msg.html

(cl:defclass <RobotMovement> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type path_planning_vrep_simulation-msg:Point2d
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotMovement (<RobotMovement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMovement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMovement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<RobotMovement> is deprecated: use path_planning_vrep_simulation-msg:RobotMovement instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RobotMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:id-val is deprecated.  Use path_planning_vrep_simulation-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <RobotMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:goal-val is deprecated.  Use path_planning_vrep_simulation-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RobotMovement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:velocity-val is deprecated.  Use path_planning_vrep_simulation-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMovement>) ostream)
  "Serializes a message object of type '<RobotMovement>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMovement>) istream)
  "Deserializes a message object of type '<RobotMovement>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMovement>)))
  "Returns string type for a message object of type '<RobotMovement>"
  "path_planning_vrep_simulation/RobotMovement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMovement)))
  "Returns string type for a message object of type 'RobotMovement"
  "path_planning_vrep_simulation/RobotMovement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMovement>)))
  "Returns md5sum for a message object of type '<RobotMovement>"
  "9625b7e71a4bfc492ffa4c7b0efb8abe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMovement)))
  "Returns md5sum for a message object of type 'RobotMovement"
  "9625b7e71a4bfc492ffa4c7b0efb8abe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMovement>)))
  "Returns full string definition for message of type '<RobotMovement>"
  (cl:format cl:nil "int32 id~%Point2d goal~%float32 velocity~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMovement)))
  "Returns full string definition for message of type 'RobotMovement"
  (cl:format cl:nil "int32 id~%Point2d goal~%float32 velocity~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMovement>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMovement>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMovement
    (cl:cons ':id (id msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':velocity (velocity msg))
))
