;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::ObstacleData)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'ObstacleData (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::OBSTACLEDATA")
  (make-package "PATH_PLANNING_VREP_SIMULATION::OBSTACLEDATA"))

(in-package "ROS")
;;//! \htmlinclude ObstacleData.msg.html


(defclass path_planning_vrep_simulation::ObstacleData
  :super ros::object
  :slots (_id _center _corners ))

(defmethod path_planning_vrep_simulation::ObstacleData
  (:init
   (&key
    ((:id __id) 0)
    ((:center __center) (instance path_planning_vrep_simulation::Point2d :init))
    ((:corners __corners) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _center __center)
   (setq _corners __corners)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; path_planning_vrep_simulation/Point2d _center
    (send _center :serialization-length)
    ;; path_planning_vrep_simulation/Point2d[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; path_planning_vrep_simulation/Point2d _center
       (send _center :serialize s)
     ;; path_planning_vrep_simulation/Point2d[] _corners
     (write-long (length _corners) s)
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Point2d _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; path_planning_vrep_simulation/Point2d[] _corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners (let (r) (dotimes (i n) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
     (dolist (elem- _corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::ObstacleData :md5sum-) "89407f0ee13636c511a99243be5bc06e")
(setf (get path_planning_vrep_simulation::ObstacleData :datatype-) "path_planning_vrep_simulation/ObstacleData")
(setf (get path_planning_vrep_simulation::ObstacleData :definition-)
      "int32     id
Point2d   center
Point2d[] corners
================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/ObstacleData "89407f0ee13636c511a99243be5bc06e")


