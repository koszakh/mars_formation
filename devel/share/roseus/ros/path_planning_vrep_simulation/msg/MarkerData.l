;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::MarkerData)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'MarkerData (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::MARKERDATA")
  (make-package "PATH_PLANNING_VREP_SIMULATION::MARKERDATA"))

(in-package "ROS")
;;//! \htmlinclude MarkerData.msg.html


(defclass path_planning_vrep_simulation::MarkerData
  :super ros::object
  :slots (_id _corners ))

(defmethod path_planning_vrep_simulation::MarkerData
  (:init
   (&key
    ((:id __id) 0)
    ((:corners __corners) (let (r) (dotimes (i 0) (push (instance path_planning_vrep_simulation::Point2d :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _corners __corners)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; path_planning_vrep_simulation/Point2d[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
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

(setf (get path_planning_vrep_simulation::MarkerData :md5sum-) "2b730fbe801a4feca407e97eadce6126")
(setf (get path_planning_vrep_simulation::MarkerData :datatype-) "path_planning_vrep_simulation/MarkerData")
(setf (get path_planning_vrep_simulation::MarkerData :definition-)
      "int32     id
Point2d[] corners
================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/MarkerData "2b730fbe801a4feca407e97eadce6126")


