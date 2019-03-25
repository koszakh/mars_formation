;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::FieldObjects)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'FieldObjects (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::FIELDOBJECTS")
  (make-package "PATH_PLANNING_VREP_SIMULATION::FIELDOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude FieldObjects.msg.html


(defclass path_planning_vrep_simulation::FieldObjects
  :super ros::object
  :slots (_source _robots _obstacles _goals ))

(defmethod path_planning_vrep_simulation::FieldObjects
  (:init
   (&key
    ((:source __source) "")
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::RobotData :init) r)) r))
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::ObstacleData :init) r)) r))
    ((:goals __goals) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::GoalData :init) r)) r))
    )
   (send-super :init)
   (setq _source (string __source))
   (setq _robots __robots)
   (setq _obstacles __obstacles)
   (setq _goals __goals)
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:goals
   (&rest __goals)
   (if (keywordp (car __goals))
       (send* _goals __goals)
     (progn
       (if __goals (setq _goals (car __goals)))
       _goals)))
  (:serialization-length
   ()
   (+
    ;; string _source
    4 (length _source)
    ;; path_planning_vrep_simulation/RobotData[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ;; path_planning_vrep_simulation/ObstacleData[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; path_planning_vrep_simulation/GoalData[] _goals
    (apply #'+ (send-all _goals :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; path_planning_vrep_simulation/RobotData[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;; path_planning_vrep_simulation/ObstacleData[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;; path_planning_vrep_simulation/GoalData[] _goals
     (write-long (length _goals) s)
     (dolist (elem _goals)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; path_planning_vrep_simulation/RobotData[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::RobotData :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; path_planning_vrep_simulation/ObstacleData[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::ObstacleData :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; path_planning_vrep_simulation/GoalData[] _goals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goals (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::GoalData :init) r)) r))
     (dolist (elem- _goals)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::FieldObjects :md5sum-) "c28964370b5f3547a5bf2d3a6ecb3366")
(setf (get path_planning_vrep_simulation::FieldObjects :datatype-) "path_planning_vrep_simulation/FieldObjects")
(setf (get path_planning_vrep_simulation::FieldObjects :definition-)
      "string         source
RobotData[]    robots
ObstacleData[] obstacles
GoalData[]     goals
================================================================================
MSG: path_planning_vrep_simulation/RobotData
int32     id
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
================================================================================
MSG: path_planning_vrep_simulation/ObstacleData
int32     id
Point2d   center
Point2d[] corners
================================================================================
MSG: path_planning_vrep_simulation/GoalData
int32     id
Point2d   center
Point2d[] corners
")



(provide :path_planning_vrep_simulation/FieldObjects "c28964370b5f3547a5bf2d3a6ecb3366")


