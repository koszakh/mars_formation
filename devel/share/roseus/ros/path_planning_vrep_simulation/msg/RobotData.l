;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::RobotData)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'RobotData (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::ROBOTDATA")
  (make-package "PATH_PLANNING_VREP_SIMULATION::ROBOTDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotData.msg.html


(defclass path_planning_vrep_simulation::RobotData
  :super ros::object
  :slots (_id _position _direction _corners _path _path_created _actual_point _next_point _angle_to_actual_point _actual_angle _sector _old_error _error_sum _on_finish _move _rotation _stop ))

(defmethod path_planning_vrep_simulation::RobotData
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance path_planning_vrep_simulation::Point2d :init))
    ((:direction __direction) 0.0)
    ((:corners __corners) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
    ((:path __path) (instance path_planning_vrep_simulation::XML_PATH :init))
    ((:path_created __path_created) nil)
    ((:actual_point __actual_point) (instance path_planning_vrep_simulation::Step :init))
    ((:next_point __next_point) (instance path_planning_vrep_simulation::Step :init))
    ((:angle_to_actual_point __angle_to_actual_point) 0.0)
    ((:actual_angle __actual_angle) 0)
    ((:sector __sector) (make-array 0 :initial-element 0 :element-type :integer))
    ((:old_error __old_error) 0.0)
    ((:error_sum __error_sum) 0.0)
    ((:on_finish __on_finish) nil)
    ((:move __move) nil)
    ((:rotation __rotation) nil)
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _direction (float __direction))
   (setq _corners __corners)
   (setq _path __path)
   (setq _path_created __path_created)
   (setq _actual_point __actual_point)
   (setq _next_point __next_point)
   (setq _angle_to_actual_point (float __angle_to_actual_point))
   (setq _actual_angle (round __actual_angle))
   (setq _sector __sector)
   (setq _old_error (float __old_error))
   (setq _error_sum (float __error_sum))
   (setq _on_finish __on_finish)
   (setq _move __move)
   (setq _rotation __rotation)
   (setq _stop __stop)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:path_created
   (&optional __path_created)
   (if __path_created (setq _path_created __path_created)) _path_created)
  (:actual_point
   (&rest __actual_point)
   (if (keywordp (car __actual_point))
       (send* _actual_point __actual_point)
     (progn
       (if __actual_point (setq _actual_point (car __actual_point)))
       _actual_point)))
  (:next_point
   (&rest __next_point)
   (if (keywordp (car __next_point))
       (send* _next_point __next_point)
     (progn
       (if __next_point (setq _next_point (car __next_point)))
       _next_point)))
  (:angle_to_actual_point
   (&optional __angle_to_actual_point)
   (if __angle_to_actual_point (setq _angle_to_actual_point __angle_to_actual_point)) _angle_to_actual_point)
  (:actual_angle
   (&optional __actual_angle)
   (if __actual_angle (setq _actual_angle __actual_angle)) _actual_angle)
  (:sector
   (&optional __sector)
   (if __sector (setq _sector __sector)) _sector)
  (:old_error
   (&optional __old_error)
   (if __old_error (setq _old_error __old_error)) _old_error)
  (:error_sum
   (&optional __error_sum)
   (if __error_sum (setq _error_sum __error_sum)) _error_sum)
  (:on_finish
   (&optional __on_finish)
   (if __on_finish (setq _on_finish __on_finish)) _on_finish)
  (:move
   (&optional __move)
   (if __move (setq _move __move)) _move)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; path_planning_vrep_simulation/Point2d _position
    (send _position :serialization-length)
    ;; float32 _direction
    4
    ;; path_planning_vrep_simulation/Point2d[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ;; path_planning_vrep_simulation/XML_PATH _path
    (send _path :serialization-length)
    ;; bool _path_created
    1
    ;; path_planning_vrep_simulation/Step _actual_point
    (send _actual_point :serialization-length)
    ;; path_planning_vrep_simulation/Step _next_point
    (send _next_point :serialization-length)
    ;; float32 _angle_to_actual_point
    4
    ;; int32 _actual_angle
    4
    ;; int32[] _sector
    (* 4    (length _sector)) 4
    ;; float32 _old_error
    4
    ;; float32 _error_sum
    4
    ;; bool _on_finish
    1
    ;; bool _move
    1
    ;; bool _rotation
    1
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; path_planning_vrep_simulation/Point2d _position
       (send _position :serialize s)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; path_planning_vrep_simulation/Point2d[] _corners
     (write-long (length _corners) s)
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;; path_planning_vrep_simulation/XML_PATH _path
       (send _path :serialize s)
     ;; bool _path_created
       (if _path_created (write-byte -1 s) (write-byte 0 s))
     ;; path_planning_vrep_simulation/Step _actual_point
       (send _actual_point :serialize s)
     ;; path_planning_vrep_simulation/Step _next_point
       (send _next_point :serialize s)
     ;; float32 _angle_to_actual_point
       (sys::poke _angle_to_actual_point (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _actual_angle
       (write-long _actual_angle s)
     ;; int32[] _sector
     (write-long (length _sector) s)
     (dotimes (i (length _sector))
       (write-long (elt _sector i) s)
       )
     ;; float32 _old_error
       (sys::poke _old_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error_sum
       (sys::poke _error_sum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _on_finish
       (if _on_finish (write-byte -1 s) (write-byte 0 s))
     ;; bool _move
       (if _move (write-byte -1 s) (write-byte 0 s))
     ;; bool _rotation
       (if _rotation (write-byte -1 s) (write-byte 0 s))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Point2d _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Point2d[] _corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
     (dolist (elem- _corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; path_planning_vrep_simulation/XML_PATH _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; bool _path_created
     (setq _path_created (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; path_planning_vrep_simulation/Step _actual_point
     (send _actual_point :deserialize buf ptr-) (incf ptr- (send _actual_point :serialization-length))
   ;; path_planning_vrep_simulation/Step _next_point
     (send _next_point :deserialize buf ptr-) (incf ptr- (send _next_point :serialization-length))
   ;; float32 _angle_to_actual_point
     (setq _angle_to_actual_point (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _actual_angle
     (setq _actual_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _sector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sector (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sector i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32 _old_error
     (setq _old_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error_sum
     (setq _error_sum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _on_finish
     (setq _on_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _move
     (setq _move (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rotation
     (setq _rotation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::RobotData :md5sum-) "66fdc63dce521c82c173fa4aa91bfc51")
(setf (get path_planning_vrep_simulation::RobotData :datatype-) "path_planning_vrep_simulation/RobotData")
(setf (get path_planning_vrep_simulation::RobotData :definition-)
      "int32     id
Point2d   position
float32   direction
Point2d[] corners
XML_PATH path
bool      path_created
Step   actual_point
Step   next_point
float32     angle_to_actual_point
int32     actual_angle
int32[]   sector
float32 old_error
float32 error_sum

bool      on_finish
bool      move
bool      rotation
bool stop

================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

================================================================================
MSG: path_planning_vrep_simulation/XML_PATH
int32  robot_id
Step[] path

================================================================================
MSG: path_planning_vrep_simulation/Step
int32   number
Point2d start
Point2d finish
float32 duration
")



(provide :path_planning_vrep_simulation/RobotData "66fdc63dce521c82c173fa4aa91bfc51")


