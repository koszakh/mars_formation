;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::WheelRotationData)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'WheelRotationData (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::WHEELROTATIONDATA")
  (make-package "PATH_PLANNING_VREP_SIMULATION::WHEELROTATIONDATA"))

(in-package "ROS")
;;//! \htmlinclude WheelRotationData.msg.html


(defclass path_planning_vrep_simulation::WheelRotationData
  :super ros::object
  :slots (_id _left_velocity _right_velocity _rotation _goal_reached ))

(defmethod path_planning_vrep_simulation::WheelRotationData
  (:init
   (&key
    ((:id __id) 0)
    ((:left_velocity __left_velocity) 0.0)
    ((:right_velocity __right_velocity) 0.0)
    ((:rotation __rotation) nil)
    ((:goal_reached __goal_reached) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _left_velocity (float __left_velocity))
   (setq _right_velocity (float __right_velocity))
   (setq _rotation __rotation)
   (setq _goal_reached __goal_reached)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:left_velocity
   (&optional __left_velocity)
   (if __left_velocity (setq _left_velocity __left_velocity)) _left_velocity)
  (:right_velocity
   (&optional __right_velocity)
   (if __right_velocity (setq _right_velocity __right_velocity)) _right_velocity)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:goal_reached
   (&optional __goal_reached)
   (if __goal_reached (setq _goal_reached __goal_reached)) _goal_reached)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _left_velocity
    4
    ;; float32 _right_velocity
    4
    ;; bool _rotation
    1
    ;; bool _goal_reached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _left_velocity
       (sys::poke _left_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_velocity
       (sys::poke _right_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rotation
       (if _rotation (write-byte -1 s) (write-byte 0 s))
     ;; bool _goal_reached
       (if _goal_reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _left_velocity
     (setq _left_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_velocity
     (setq _right_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rotation
     (setq _rotation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _goal_reached
     (setq _goal_reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::WheelRotationData :md5sum-) "16794a3f07ee22fddbfe509a3034e43c")
(setf (get path_planning_vrep_simulation::WheelRotationData :datatype-) "path_planning_vrep_simulation/WheelRotationData")
(setf (get path_planning_vrep_simulation::WheelRotationData :definition-)
      "int32 id
float32 left_velocity
float32 right_velocity
bool rotation
bool goal_reached

")



(provide :path_planning_vrep_simulation/WheelRotationData "16794a3f07ee22fddbfe509a3034e43c")


