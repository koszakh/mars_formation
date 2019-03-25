; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude RobotData.msg.html

(cl:defclass <RobotData> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type path_planning_vrep_simulation-msg:Point2d
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))
   (direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0)
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector path_planning_vrep_simulation-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:Point2d :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d)))
   (path
    :reader path
    :initarg :path
    :type path_planning_vrep_simulation-msg:XML_PATH
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:XML_PATH))
   (path_created
    :reader path_created
    :initarg :path_created
    :type cl:boolean
    :initform cl:nil)
   (actual_point
    :reader actual_point
    :initarg :actual_point
    :type path_planning_vrep_simulation-msg:Step
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Step))
   (next_point
    :reader next_point
    :initarg :next_point
    :type path_planning_vrep_simulation-msg:Step
    :initform (cl:make-instance 'path_planning_vrep_simulation-msg:Step))
   (angle_to_actual_point
    :reader angle_to_actual_point
    :initarg :angle_to_actual_point
    :type cl:float
    :initform 0.0)
   (actual_angle
    :reader actual_angle
    :initarg :actual_angle
    :type cl:integer
    :initform 0)
   (sector
    :reader sector
    :initarg :sector
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (old_error
    :reader old_error
    :initarg :old_error
    :type cl:float
    :initform 0.0)
   (error_sum
    :reader error_sum
    :initarg :error_sum
    :type cl:float
    :initform 0.0)
   (on_finish
    :reader on_finish
    :initarg :on_finish
    :type cl:boolean
    :initform cl:nil)
   (move
    :reader move
    :initarg :move
    :type cl:boolean
    :initform cl:nil)
   (rotation
    :reader rotation
    :initarg :rotation
    :type cl:boolean
    :initform cl:nil)
   (stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotData (<RobotData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<RobotData> is deprecated: use path_planning_vrep_simulation-msg:RobotData instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:id-val is deprecated.  Use path_planning_vrep_simulation-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:position-val is deprecated.  Use path_planning_vrep_simulation-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:direction-val is deprecated.  Use path_planning_vrep_simulation-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:corners-val is deprecated.  Use path_planning_vrep_simulation-msg:corners instead.")
  (corners m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:path-val is deprecated.  Use path_planning_vrep_simulation-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'path_created-val :lambda-list '(m))
(cl:defmethod path_created-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:path_created-val is deprecated.  Use path_planning_vrep_simulation-msg:path_created instead.")
  (path_created m))

(cl:ensure-generic-function 'actual_point-val :lambda-list '(m))
(cl:defmethod actual_point-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:actual_point-val is deprecated.  Use path_planning_vrep_simulation-msg:actual_point instead.")
  (actual_point m))

(cl:ensure-generic-function 'next_point-val :lambda-list '(m))
(cl:defmethod next_point-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:next_point-val is deprecated.  Use path_planning_vrep_simulation-msg:next_point instead.")
  (next_point m))

(cl:ensure-generic-function 'angle_to_actual_point-val :lambda-list '(m))
(cl:defmethod angle_to_actual_point-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:angle_to_actual_point-val is deprecated.  Use path_planning_vrep_simulation-msg:angle_to_actual_point instead.")
  (angle_to_actual_point m))

(cl:ensure-generic-function 'actual_angle-val :lambda-list '(m))
(cl:defmethod actual_angle-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:actual_angle-val is deprecated.  Use path_planning_vrep_simulation-msg:actual_angle instead.")
  (actual_angle m))

(cl:ensure-generic-function 'sector-val :lambda-list '(m))
(cl:defmethod sector-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:sector-val is deprecated.  Use path_planning_vrep_simulation-msg:sector instead.")
  (sector m))

(cl:ensure-generic-function 'old_error-val :lambda-list '(m))
(cl:defmethod old_error-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:old_error-val is deprecated.  Use path_planning_vrep_simulation-msg:old_error instead.")
  (old_error m))

(cl:ensure-generic-function 'error_sum-val :lambda-list '(m))
(cl:defmethod error_sum-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:error_sum-val is deprecated.  Use path_planning_vrep_simulation-msg:error_sum instead.")
  (error_sum m))

(cl:ensure-generic-function 'on_finish-val :lambda-list '(m))
(cl:defmethod on_finish-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:on_finish-val is deprecated.  Use path_planning_vrep_simulation-msg:on_finish instead.")
  (on_finish m))

(cl:ensure-generic-function 'move-val :lambda-list '(m))
(cl:defmethod move-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:move-val is deprecated.  Use path_planning_vrep_simulation-msg:move instead.")
  (move m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:rotation-val is deprecated.  Use path_planning_vrep_simulation-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:stop-val is deprecated.  Use path_planning_vrep_simulation-msg:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotData>) ostream)
  "Serializes a message object of type '<RobotData>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'path_created) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'next_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_to_actual_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'actual_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'sector))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'old_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on_finish) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'move) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rotation) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotData>) istream)
  "Deserializes a message object of type '<RobotData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:setf (cl:slot-value msg 'path_created) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'next_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_to_actual_point) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'old_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_sum) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'on_finish) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'move) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rotation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotData>)))
  "Returns string type for a message object of type '<RobotData>"
  "path_planning_vrep_simulation/RobotData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotData)))
  "Returns string type for a message object of type 'RobotData"
  "path_planning_vrep_simulation/RobotData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotData>)))
  "Returns md5sum for a message object of type '<RobotData>"
  "66fdc63dce521c82c173fa4aa91bfc51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotData)))
  "Returns md5sum for a message object of type 'RobotData"
  "66fdc63dce521c82c173fa4aa91bfc51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotData>)))
  "Returns full string definition for message of type '<RobotData>"
  (cl:format cl:nil "int32     id~%Point2d   position~%float32   direction~%Point2d[] corners~%XML_PATH path~%bool      path_created~%Step   actual_point~%Step   next_point~%float32     angle_to_actual_point~%int32     actual_angle~%int32[]   sector~%float32 old_error~%float32 error_sum~%~%bool      on_finish~%bool      move~%bool      rotation~%bool stop~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%================================================================================~%MSG: path_planning_vrep_simulation/XML_PATH~%int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotData)))
  "Returns full string definition for message of type 'RobotData"
  (cl:format cl:nil "int32     id~%Point2d   position~%float32   direction~%Point2d[] corners~%XML_PATH path~%bool      path_created~%Step   actual_point~%Step   next_point~%float32     angle_to_actual_point~%int32     actual_angle~%int32[]   sector~%float32 old_error~%float32 error_sum~%~%bool      on_finish~%bool      move~%bool      rotation~%bool stop~%~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%================================================================================~%MSG: path_planning_vrep_simulation/XML_PATH~%int32  robot_id~%Step[] path~%~%================================================================================~%MSG: path_planning_vrep_simulation/Step~%int32   number~%Point2d start~%Point2d finish~%float32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotData>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'next_point))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotData
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':corners (corners msg))
    (cl:cons ':path (path msg))
    (cl:cons ':path_created (path_created msg))
    (cl:cons ':actual_point (actual_point msg))
    (cl:cons ':next_point (next_point msg))
    (cl:cons ':angle_to_actual_point (angle_to_actual_point msg))
    (cl:cons ':actual_angle (actual_angle msg))
    (cl:cons ':sector (sector msg))
    (cl:cons ':old_error (old_error msg))
    (cl:cons ':error_sum (error_sum msg))
    (cl:cons ':on_finish (on_finish msg))
    (cl:cons ':move (move msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':stop (stop msg))
))
