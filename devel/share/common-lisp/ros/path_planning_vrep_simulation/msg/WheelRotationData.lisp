; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude WheelRotationData.msg.html

(cl:defclass <WheelRotationData> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (left_velocity
    :reader left_velocity
    :initarg :left_velocity
    :type cl:float
    :initform 0.0)
   (right_velocity
    :reader right_velocity
    :initarg :right_velocity
    :type cl:float
    :initform 0.0)
   (rotation
    :reader rotation
    :initarg :rotation
    :type cl:boolean
    :initform cl:nil)
   (goal_reached
    :reader goal_reached
    :initarg :goal_reached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WheelRotationData (<WheelRotationData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelRotationData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelRotationData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<WheelRotationData> is deprecated: use path_planning_vrep_simulation-msg:WheelRotationData instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WheelRotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:id-val is deprecated.  Use path_planning_vrep_simulation-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'left_velocity-val :lambda-list '(m))
(cl:defmethod left_velocity-val ((m <WheelRotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:left_velocity-val is deprecated.  Use path_planning_vrep_simulation-msg:left_velocity instead.")
  (left_velocity m))

(cl:ensure-generic-function 'right_velocity-val :lambda-list '(m))
(cl:defmethod right_velocity-val ((m <WheelRotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:right_velocity-val is deprecated.  Use path_planning_vrep_simulation-msg:right_velocity instead.")
  (right_velocity m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <WheelRotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:rotation-val is deprecated.  Use path_planning_vrep_simulation-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'goal_reached-val :lambda-list '(m))
(cl:defmethod goal_reached-val ((m <WheelRotationData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:goal_reached-val is deprecated.  Use path_planning_vrep_simulation-msg:goal_reached instead.")
  (goal_reached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelRotationData>) ostream)
  "Serializes a message object of type '<WheelRotationData>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'goal_reached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelRotationData>) istream)
  "Deserializes a message object of type '<WheelRotationData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rotation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'goal_reached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelRotationData>)))
  "Returns string type for a message object of type '<WheelRotationData>"
  "path_planning_vrep_simulation/WheelRotationData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelRotationData)))
  "Returns string type for a message object of type 'WheelRotationData"
  "path_planning_vrep_simulation/WheelRotationData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelRotationData>)))
  "Returns md5sum for a message object of type '<WheelRotationData>"
  "16794a3f07ee22fddbfe509a3034e43c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelRotationData)))
  "Returns md5sum for a message object of type 'WheelRotationData"
  "16794a3f07ee22fddbfe509a3034e43c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelRotationData>)))
  "Returns full string definition for message of type '<WheelRotationData>"
  (cl:format cl:nil "int32 id~%float32 left_velocity~%float32 right_velocity~%bool rotation~%bool goal_reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelRotationData)))
  "Returns full string definition for message of type 'WheelRotationData"
  (cl:format cl:nil "int32 id~%float32 left_velocity~%float32 right_velocity~%bool rotation~%bool goal_reached~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelRotationData>))
  (cl:+ 0
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelRotationData>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelRotationData
    (cl:cons ':id (id msg))
    (cl:cons ':left_velocity (left_velocity msg))
    (cl:cons ':right_velocity (right_velocity msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':goal_reached (goal_reached msg))
))
