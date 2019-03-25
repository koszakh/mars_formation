; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude FieldObjects.msg.html

(cl:defclass <FieldObjects> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (robots
    :reader robots
    :initarg :robots
    :type (cl:vector path_planning_vrep_simulation-msg:RobotData)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:RobotData :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:RobotData)))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector path_planning_vrep_simulation-msg:ObstacleData)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:ObstacleData :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:ObstacleData)))
   (goals
    :reader goals
    :initarg :goals
    :type (cl:vector path_planning_vrep_simulation-msg:GoalData)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:GoalData :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:GoalData))))
)

(cl:defclass FieldObjects (<FieldObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FieldObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FieldObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<FieldObjects> is deprecated: use path_planning_vrep_simulation-msg:FieldObjects instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <FieldObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:source-val is deprecated.  Use path_planning_vrep_simulation-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <FieldObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:robots-val is deprecated.  Use path_planning_vrep_simulation-msg:robots instead.")
  (robots m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <FieldObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:obstacles-val is deprecated.  Use path_planning_vrep_simulation-msg:obstacles instead.")
  (obstacles m))

(cl:ensure-generic-function 'goals-val :lambda-list '(m))
(cl:defmethod goals-val ((m <FieldObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:goals-val is deprecated.  Use path_planning_vrep_simulation-msg:goals instead.")
  (goals m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FieldObjects>) ostream)
  "Serializes a message object of type '<FieldObjects>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robots))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goals))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goals))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FieldObjects>) istream)
  "Deserializes a message object of type '<FieldObjects>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:RobotData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:ObstacleData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goals) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goals)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'path_planning_vrep_simulation-msg:GoalData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FieldObjects>)))
  "Returns string type for a message object of type '<FieldObjects>"
  "path_planning_vrep_simulation/FieldObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FieldObjects)))
  "Returns string type for a message object of type 'FieldObjects"
  "path_planning_vrep_simulation/FieldObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FieldObjects>)))
  "Returns md5sum for a message object of type '<FieldObjects>"
  "c28964370b5f3547a5bf2d3a6ecb3366")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FieldObjects)))
  "Returns md5sum for a message object of type 'FieldObjects"
  "c28964370b5f3547a5bf2d3a6ecb3366")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FieldObjects>)))
  "Returns full string definition for message of type '<FieldObjects>"
  (cl:format cl:nil "string         source~%RobotData[]    robots~%ObstacleData[] obstacles~%GoalData[]     goals~%================================================================================~%MSG: path_planning_vrep_simulation/RobotData~%int32     id~%Point2d   position~%float32   direction~%Point2d[] corners~%XML_PATH path~%bool      path_created~%Step   actual_point~%Step   next_point~%float32     angle_to_actual_point~%int32     actual_angle~%int32[]   sector~%float32 old_error~%float32 error_sum~%~%bool      on_finish~%bool      move~%bool      rotation~%bool stop~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%================================================================================~%MSG: path_planning_vrep_simulation/XML_PATH~%int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/ObstacleData~%int32     id~%Point2d   center~%Point2d[] corners~%================================================================================~%MSG: path_planning_vrep_simulation/GoalData~%int32     id~%Point2d   center~%Point2d[] corners~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FieldObjects)))
  "Returns full string definition for message of type 'FieldObjects"
  (cl:format cl:nil "string         source~%RobotData[]    robots~%ObstacleData[] obstacles~%GoalData[]     goals~%================================================================================~%MSG: path_planning_vrep_simulation/RobotData~%int32     id~%Point2d   position~%float32   direction~%Point2d[] corners~%XML_PATH path~%bool      path_created~%Step   actual_point~%Step   next_point~%float32     angle_to_actual_point~%int32     actual_angle~%int32[]   sector~%float32 old_error~%float32 error_sum~%~%bool      on_finish~%bool      move~%bool      rotation~%bool stop~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%================================================================================~%MSG: path_planning_vrep_simulation/XML_PATH~%int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%================================================================================~%MSG: path_planning_vrep_simulation/ObstacleData~%int32     id~%Point2d   center~%Point2d[] corners~%================================================================================~%MSG: path_planning_vrep_simulation/GoalData~%int32     id~%Point2d   center~%Point2d[] corners~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FieldObjects>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FieldObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'FieldObjects
    (cl:cons ':source (source msg))
    (cl:cons ':robots (robots msg))
    (cl:cons ':obstacles (obstacles msg))
    (cl:cons ':goals (goals msg))
))
