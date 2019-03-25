;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::RobotMovement)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'RobotMovement (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::ROBOTMOVEMENT")
  (make-package "PATH_PLANNING_VREP_SIMULATION::ROBOTMOVEMENT"))

(in-package "ROS")
;;//! \htmlinclude RobotMovement.msg.html


(defclass path_planning_vrep_simulation::RobotMovement
  :super ros::object
  :slots (_id _goal _velocity ))

(defmethod path_planning_vrep_simulation::RobotMovement
  (:init
   (&key
    ((:id __id) 0)
    ((:goal __goal) (instance path_planning_vrep_simulation::Point2d :init))
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _goal __goal)
   (setq _velocity (float __velocity))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; path_planning_vrep_simulation/Point2d _goal
    (send _goal :serialization-length)
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; path_planning_vrep_simulation/Point2d _goal
       (send _goal :serialize s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Point2d _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::RobotMovement :md5sum-) "9625b7e71a4bfc492ffa4c7b0efb8abe")
(setf (get path_planning_vrep_simulation::RobotMovement :datatype-) "path_planning_vrep_simulation/RobotMovement")
(setf (get path_planning_vrep_simulation::RobotMovement :definition-)
      "int32 id
Point2d goal
float32 velocity

================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/RobotMovement "9625b7e71a4bfc492ffa4c7b0efb8abe")


