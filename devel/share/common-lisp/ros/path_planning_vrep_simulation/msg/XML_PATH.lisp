; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude XML_PATH.msg.html

(cl:defclass <XML_PATH> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:integer
    :initform 0)
   (path
    :reader path
    :initarg :path
    :type (cl:vector path_planning_vrep_simulation-msg:Step)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:Step :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:Step))))
)

(cl:defclass XML_PATH (<XML_PATH>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XML_PATH>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XML_PATH)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<XML_PATH> is deprecated: use path_planning_vrep_simulation-msg:XML_PATH instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <XML_PATH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:robot_id-val is deprecated.  Use path_planning_vrep_simulation-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <XML_PATH>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:path-val is deprecated.  Use path_planning_vrep_simulation-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XML_PATH>) ostream)
  "Serializes a message object of type '<XML_PATH>"
  (cl:let* ((signed (cl:slot-value msg 'robot_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XML_PATH>) istream)
  "Deserializes a message object of type '<XML_PATH>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:Step))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XML_PATH>)))
  "Returns string type for a message object of type '<XML_PATH>"
  "path_planning_vrep_simulation/XML_PATH")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XML_PATH)))
  "Returns string type for a message object of type 'XML_PATH"
  "path_planning_vrep_simulation/XML_PATH")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XML_PATH>)))
  "Returns md5sum for a message object of type '<XML_PATH>"
  "cf4ec56c93e44327c120d4f9de7a8dcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XML_PATH)))
  "Returns md5sum for a message object of type 'XML_PATH"
  "cf4ec56c93e44327c120d4f9de7a8dcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XML_PATH>)))
  "Returns full string definition for message of type '<XML_PATH>"
  (cl:format cl:nil "int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XML_PATH)))
  "Returns full string definition for message of type 'XML_PATH"
  (cl:format cl:nil "int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XML_PATH>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XML_PATH>))
  "Converts a ROS message object to a list"
  (cl:list 'XML_PATH
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':path (path msg))
))
