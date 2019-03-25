;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::Path)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'Path (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::PATH")
  (make-package "PATH_PLANNING_VREP_SIMULATION::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass path_planning_vrep_simulation::Path
  :super ros::object
  :slots (_platform_id _path_points ))

(defmethod path_planning_vrep_simulation::Path
  (:init
   (&key
    ((:platform_id __platform_id) 0)
    ((:path_points __path_points) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
    )
   (send-super :init)
   (setq _platform_id (round __platform_id))
   (setq _path_points __path_points)
   self)
  (:platform_id
   (&optional __platform_id)
   (if __platform_id (setq _platform_id __platform_id)) _platform_id)
  (:path_points
   (&rest __path_points)
   (if (keywordp (car __path_points))
       (send* _path_points __path_points)
     (progn
       (if __path_points (setq _path_points (car __path_points)))
       _path_points)))
  (:serialization-length
   ()
   (+
    ;; int32 _platform_id
    4
    ;; path_planning_vrep_simulation/Point2d[] _path_points
    (apply #'+ (send-all _path_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _platform_id
       (write-long _platform_id s)
     ;; path_planning_vrep_simulation/Point2d[] _path_points
     (write-long (length _path_points) s)
     (dolist (elem _path_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _platform_id
     (setq _platform_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Point2d[] _path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_points (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
     (dolist (elem- _path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::Path :md5sum-) "6585a46cc084ae3da85218f36f44c7f9")
(setf (get path_planning_vrep_simulation::Path :datatype-) "path_planning_vrep_simulation/Path")
(setf (get path_planning_vrep_simulation::Path :definition-)
      "int32     platform_id
Point2d[] path_points

================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/Path "6585a46cc084ae3da85218f36f44c7f9")


