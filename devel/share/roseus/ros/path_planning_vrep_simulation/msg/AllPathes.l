;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::AllPathes)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'AllPathes (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::ALLPATHES")
  (make-package "PATH_PLANNING_VREP_SIMULATION::ALLPATHES"))

(in-package "ROS")
;;//! \htmlinclude AllPathes.msg.html


(defclass path_planning_vrep_simulation::AllPathes
  :super ros::object
  :slots (_paths_list ))

(defmethod path_planning_vrep_simulation::AllPathes
  (:init
   (&key
    ((:paths_list __paths_list) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::Path :init) r)) r))
    )
   (send-super :init)
   (setq _paths_list __paths_list)
   self)
  (:paths_list
   (&rest __paths_list)
   (if (keywordp (car __paths_list))
       (send* _paths_list __paths_list)
     (progn
       (if __paths_list (setq _paths_list (car __paths_list)))
       _paths_list)))
  (:serialization-length
   ()
   (+
    ;; path_planning_vrep_simulation/Path[] _paths_list
    (apply #'+ (send-all _paths_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; path_planning_vrep_simulation/Path[] _paths_list
     (write-long (length _paths_list) s)
     (dolist (elem _paths_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; path_planning_vrep_simulation/Path[] _paths_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_list (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::Path :init) r)) r))
     (dolist (elem- _paths_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::AllPathes :md5sum-) "b16957de463f00ee232f07f8af90b67a")
(setf (get path_planning_vrep_simulation::AllPathes :datatype-) "path_planning_vrep_simulation/AllPathes")
(setf (get path_planning_vrep_simulation::AllPathes :definition-)
      "Path[] paths_list
================================================================================
MSG: path_planning_vrep_simulation/Path
int32     platform_id
Point2d[] path_points

================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/AllPathes "b16957de463f00ee232f07f8af90b67a")


