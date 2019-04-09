; Auto-generated. Do not edit!


(cl:in-package mars_formation-msg)


;//! \htmlinclude Path.msg.html

(cl:defclass <Path> (roslisp-msg-protocol:ros-message)
  ((platform_id
    :reader platform_id
    :initarg :platform_id
    :type cl:integer
    :initform 0)
   (path_points
    :reader path_points
    :initarg :path_points
    :type (cl:vector mars_formation-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'mars_formation-msg:Point2d :initial-element (cl:make-instance 'mars_formation-msg:Point2d)))
   (goal
    :reader goal
    :initarg :goal
    :type mars_formation-msg:Point2d
    :initform (cl:make-instance 'mars_formation-msg:Point2d))
   (final_orient_point
    :reader final_orient_point
    :initarg :final_orient_point
    :type mars_formation-msg:Point2d
    :initform (cl:make-instance 'mars_formation-msg:Point2d)))
)

(cl:defclass Path (<Path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mars_formation-msg:<Path> is deprecated: use mars_formation-msg:Path instead.")))

(cl:ensure-generic-function 'platform_id-val :lambda-list '(m))
(cl:defmethod platform_id-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_formation-msg:platform_id-val is deprecated.  Use mars_formation-msg:platform_id instead.")
  (platform_id m))

(cl:ensure-generic-function 'path_points-val :lambda-list '(m))
(cl:defmethod path_points-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_formation-msg:path_points-val is deprecated.  Use mars_formation-msg:path_points instead.")
  (path_points m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_formation-msg:goal-val is deprecated.  Use mars_formation-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'final_orient_point-val :lambda-list '(m))
(cl:defmethod final_orient_point-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mars_formation-msg:final_orient_point-val is deprecated.  Use mars_formation-msg:final_orient_point instead.")
  (final_orient_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Path>) ostream)
  "Serializes a message object of type '<Path>"
  (cl:let* ((signed (cl:slot-value msg 'platform_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_orient_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Path>) istream)
  "Deserializes a message object of type '<Path>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'platform_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mars_formation-msg:Point2d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_orient_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Path>)))
  "Returns string type for a message object of type '<Path>"
  "mars_formation/Path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Path)))
  "Returns string type for a message object of type 'Path"
  "mars_formation/Path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Path>)))
  "Returns md5sum for a message object of type '<Path>"
  "3608af306691de0c868f4fded45490ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Path)))
  "Returns md5sum for a message object of type 'Path"
  "3608af306691de0c868f4fded45490ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Path>)))
  "Returns full string definition for message of type '<Path>"
  (cl:format cl:nil "int32     platform_id~%Point2d[] path_points~%Point2d goal~%Point2d final_orient_point~%~%================================================================================~%MSG: mars_formation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Path)))
  "Returns full string definition for message of type 'Path"
  (cl:format cl:nil "int32     platform_id~%Point2d[] path_points~%Point2d goal~%Point2d final_orient_point~%~%================================================================================~%MSG: mars_formation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Path>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_orient_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Path>))
  "Converts a ROS message object to a list"
  (cl:list 'Path
    (cl:cons ':platform_id (platform_id msg))
    (cl:cons ':path_points (path_points msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':final_orient_point (final_orient_point msg))
))
