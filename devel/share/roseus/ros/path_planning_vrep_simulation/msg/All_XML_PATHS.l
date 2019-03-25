;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::All_XML_PATHS)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'All_XML_PATHS (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::ALL_XML_PATHS")
  (make-package "PATH_PLANNING_VREP_SIMULATION::ALL_XML_PATHS"))

(in-package "ROS")
;;//! \htmlinclude All_XML_PATHS.msg.html


(defclass path_planning_vrep_simulation::All_XML_PATHS
  :super ros::object
  :slots (_paths ))

(defmethod path_planning_vrep_simulation::All_XML_PATHS
  (:init
   (&key
    ((:paths __paths) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::XML_PATH :init) r)) r))
    )
   (send-super :init)
   (setq _paths __paths)
   self)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:serialization-length
   ()
   (+
    ;; path_planning_vrep_simulation/XML_PATH[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; path_planning_vrep_simulation/XML_PATH[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; path_planning_vrep_simulation/XML_PATH[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::XML_PATH :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::All_XML_PATHS :md5sum-) "059b622873eff4f7b4831c208d9e7cc2")
(setf (get path_planning_vrep_simulation::All_XML_PATHS :datatype-) "path_planning_vrep_simulation/All_XML_PATHS")
(setf (get path_planning_vrep_simulation::All_XML_PATHS :definition-)
      "XML_PATH[] paths

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
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/All_XML_PATHS "059b622873eff4f7b4831c208d9e7cc2")


