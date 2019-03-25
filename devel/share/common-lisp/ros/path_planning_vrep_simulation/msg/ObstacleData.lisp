; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude ObstacleData.msg.html

(cl:defclass <ObstacleData> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (center
    :reader center
    :initarg :center
    :type path_planning_vrep_simulation-msg:Point2d
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector path_planning_vrep_simulation-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:Point2d :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))))
)

(cl:defclass ObstacleData (<ObstacleData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<ObstacleData> is deprecated: use path_planning_vrep_simulation-msg:ObstacleData instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:id-val is deprecated.  Use path_planning_vrep_simulation-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <ObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:center-val is deprecated.  Use path_planning_vrep_simulation-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <ObstacleData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:corners-val is deprecated.  Use path_planning_vrep_simulation-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleData>) ostream)
  "Serializes a message object of type '<ObstacleData>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleData>) istream)
  "Deserializes a message object of type '<ObstacleData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corners) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corners)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleData>)))
  "Returns string type for a message object of type '<ObstacleData>"
  "path_planning_vrep_simulation/ObstacleData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleData)))
  "Returns string type for a message object of type 'ObstacleData"
  "path_planning_vrep_simulation/ObstacleData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleData>)))
  "Returns md5sum for a message object of type '<ObstacleData>"
  "89407f0ee13636c511a99243be5bc06e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleData)))
  "Returns md5sum for a message object of type 'ObstacleData"
  "89407f0ee13636c511a99243be5bc06e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleData>)))
  "Returns full string definition for message of type '<ObstacleData>"
  (cl:format cl:nil "int32     id~%Point2d   center~%Point2d[] corners~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleData)))
  "Returns full string definition for message of type 'ObstacleData"
  (cl:format cl:nil "int32     id~%Point2d   center~%Point2d[] corners~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleData>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleData>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleData
    (cl:cons ':id (id msg))
    (cl:cons ':center (center msg))
    (cl:cons ':corners (corners msg))
))
