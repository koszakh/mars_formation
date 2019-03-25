;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::XML_PATH)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'XML_PATH (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::XML_PATH")
  (make-package "PATH_PLANNING_VREP_SIMULATION::XML_PATH"))

(in-package "ROS")
;;//! \htmlinclude XML_PATH.msg.html


(defclass path_planning_vrep_simulation::XML_PATH
  :super ros::object
  :slots (_robot_id _path ))

(defmethod path_planning_vrep_simulation::XML_PATH
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:path __path) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::Step :init) r)) r))
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _path __path)
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; int32 _robot_id
    4
    ;; path_planning_vrep_simulation/Step[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_id
       (write-long _robot_id s)
     ;; path_planning_vrep_simulation/Step[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_id
     (setq _robot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Step[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::Step :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::XML_PATH :md5sum-) "cf4ec56c93e44327c120d4f9de7a8dcb")
(setf (get path_planning_vrep_simulation::XML_PATH :datatype-) "path_planning_vrep_simulation/XML_PATH")
(setf (get path_planning_vrep_simulation::XML_PATH :definition-)
      "int32  robot_id
Step[] path

================================================================================
MSG: path_planning_vrep_simulation/Step
int32   number
Point2d start
Point2d finish
float32 duration
================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/XML_PATH "cf4ec56c93e44327c120d4f9de7a8dcb")


