; Auto-generated. Do not edit!


(cl:in-package path_planning_vrep_simulation-msg)


;//! \htmlinclude MarkerData.msg.html

(cl:defclass <MarkerData> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (corners
    :reader corners
    :initarg :corners
    :type (cl:vector path_planning_vrep_simulation-msg:Point2d)
   :initform (cl:make-array 0 :element-type 'path_planning_vrep_simulation-msg:Point2d :initial-element (cl:make-instance 'path_planning_vrep_simulation-msg:Point2d))))
)

(cl:defclass MarkerData (<MarkerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name path_planning_vrep_simulation-msg:<MarkerData> is deprecated: use path_planning_vrep_simulation-msg:MarkerData instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MarkerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:id-val is deprecated.  Use path_planning_vrep_simulation-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'corners-val :lambda-list '(m))
(cl:defmethod corners-val ((m <MarkerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader path_planning_vrep_simulation-msg:corners-val is deprecated.  Use path_planning_vrep_simulation-msg:corners instead.")
  (corners m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerData>) ostream)
  "Serializes a message object of type '<MarkerData>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corners))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corners))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerData>) istream)
  "Deserializes a message object of type '<MarkerData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerData>)))
  "Returns string type for a message object of type '<MarkerData>"
  "path_planning_vrep_simulation/MarkerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerData)))
  "Returns string type for a message object of type 'MarkerData"
  "path_planning_vrep_simulation/MarkerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerData>)))
  "Returns md5sum for a message object of type '<MarkerData>"
  "2b730fbe801a4feca407e97eadce6126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerData)))
  "Returns md5sum for a message object of type 'MarkerData"
  "2b730fbe801a4feca407e97eadce6126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerData>)))
  "Returns full string definition for message of type '<MarkerData>"
  (cl:format cl:nil "int32     id~%Point2d[] corners~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerData)))
  "Returns full string definition for message of type 'MarkerData"
  (cl:format cl:nil "int32     id~%Point2d[] corners~%================================================================================~%MSG: path_planning_vrep_simulation/Point2d~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerData>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corners) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerData>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerData
    (cl:cons ':id (id msg))
    (cl:cons ':corners (corners msg))
))
