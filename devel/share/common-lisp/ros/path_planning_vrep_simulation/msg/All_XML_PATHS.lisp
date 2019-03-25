; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude All_XML_PATHS.msg.html

(cl:defclass <All_XML_PATHS> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector path_planning_vrep_simulation-msg:XML_PATH)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:XML_PATH :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:XML_PATH))))
)

(cl:defclass All_XML_PATHS (<All_XML_PATHS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <All_XML_PATHS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'All_XML_PATHS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<All_XML_PATHS> is deprecated: use path_planning_vrep_simulation-msg:All_XML_PATHS instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <All_XML_PATHS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:paths-val is deprecated.  Use path_planning_vrep_simulation-msg:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <All_XML_PATHS>) ostream)
  "Serializes a message object of type '<All_XML_PATHS>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <All_XML_PATHS>) istream)
  "Deserializes a message object of type '<All_XML_PATHS>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:XML_PATH))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<All_XML_PATHS>)))
  "Returns string type for a message object of type '<All_XML_PATHS>"
  "path_planning_vrep_simulation/All_XML_PATHS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'All_XML_PATHS)))
  "Returns string type for a message object of type 'All_XML_PATHS"
  "path_planning_vrep_simulation/All_XML_PATHS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<All_XML_PATHS>)))
  "Returns md5sum for a message object of type '<All_XML_PATHS>"
  "059b622873eff4f7b4831c208d9e7cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'All_XML_PATHS)))
  "Returns md5sum for a message object of type 'All_XML_PATHS"
  "059b622873eff4f7b4831c208d9e7cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<All_XML_PATHS>)))
  "Returns full string definition for message of type '<All_XML_PATHS>"
  (cl:format cl:nil "XML_PATH[] paths~%~%================================================================================~%MSG: path_planning_vrep_simulation/XML_PATH~%int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'All_XML_PATHS)))
  "Returns full string definition for message of type 'All_XML_PATHS"
  (cl:format cl:nil "XML_PATH[] paths~%~%================================================================================~%MSG: path_planning_vrep_simulation/XML_PATH~%int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <All_XML_PATHS>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <All_XML_PATHS>))
  "Converts a ROS message object to a list"
  (cl:list 'All_XML_PATHS
    (cl:cons ':paths (paths msg))
))
