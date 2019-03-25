; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude AllPathes.msg.html

(cl:defclass <AllPathes> (roslisp-msg-protocol:ros-message)
  ((paths_list
    :reader paths_list
    :initarg :paths_list
    :type (cl:vector path_planning_vrep_simulation-msg:Path)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:Path :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:Path))))
)

(cl:defclass AllPathes (<AllPathes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AllPathes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AllPathes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<AllPathes> is deprecated: use path_planning_vrep_simulation-msg:AllPathes instead.")))

(cl:ensure-generic-function 'paths_list-val :lambda-list '(m))
(cl:defmethod paths_list-val ((m <AllPathes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:paths_list-val is deprecated.  Use path_planning_vrep_simulation-msg:paths_list instead.")
  (paths_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AllPathes>) ostream)
  "Serializes a message object of type '<AllPathes>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AllPathes>) istream)
  "Deserializes a message object of type '<AllPathes>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AllPathes>)))
  "Returns string type for a message object of type '<AllPathes>"
  "path_planning_vrep_simulation/AllPathes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AllPathes)))
  "Returns string type for a message object of type 'AllPathes"
  "path_planning_vrep_simulation/AllPathes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AllPathes>)))
  "Returns md5sum for a message object of type '<AllPathes>"
  "b16957de463f00ee232f07f8af90b67a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AllPathes)))
  "Returns md5sum for a message object of type 'AllPathes"
  "b16957de463f00ee232f07f8af90b67a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AllPathes>)))
  "Returns full string definition for message of type '<AllPathes>"
  (cl:format cl:nil "Path[] paths_list~%================================================================================~%MSG: path_planning_vrep_simulation/Path~%int32     platform_id~%Point2d[] path_points~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AllPathes)))
  "Returns full string definition for message of type 'AllPathes"
  (cl:format cl:nil "Path[] paths_list~%================================================================================~%MSG: path_planning_vrep_simulation/Path~%int32     platform_id~%Point2d[] path_points~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AllPathes>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AllPathes>))
  "Converts a ROS message object to a list"
  (cl:list 'AllPathes
    (cl:cons ':paths_list (paths_list msg))
))
