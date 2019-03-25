;; Auto-generated. Do not edit!


(when (boundp 'path_planning_vrep_simulation::Step)
  (if (not (find-package "PATH_PLANNING_VREP_SIMULATION"))
    (make-package "PATH_PLANNING_VREP_SIMULATION"))
  (shadow 'Step (find-package "PATH_PLANNING_VREP_SIMULATION")))
(unless (find-package "PATH_PLANNING_VREP_SIMULATION::STEP")
  (make-package "PATH_PLANNING_VREP_SIMULATION::STEP"))

(in-package "ROS")
;;//! \htmlinclude Step.msg.html


(defclass path_planning_vrep_simulation::Step
  :super ros::object
  :slots (_number _start _finish _duration ))

(defmethod path_planning_vrep_simulation::Step
  (:init
   (&key
    ((:number __number) 0)
    ((:start __start) (instance path_planning_vrep_simulation::Point2d :init))
    ((:finish __finish) (instance path_planning_vrep_simulation::Point2d :init))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _number (round __number))
   (setq _start __start)
   (setq _finish __finish)
   (setq _duration (float __duration))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:finish
   (&rest __finish)
   (if (keywordp (car __finish))
       (send* _finish __finish)
     (progn
       (if __finish (setq _finish (car __finish)))
       _finish)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ;; path_planning_vrep_simulation/Point2d _start
    (send _start :serialization-length)
    ;; path_planning_vrep_simulation/Point2d _finish
    (send _finish :serialization-length)
    ;; float32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;; path_planning_vrep_simulation/Point2d _start
       (send _start :serialize s)
     ;; path_planning_vrep_simulation/Point2d _finish
       (send _finish :serialize s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; path_planning_vrep_simulation/Point2d _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; path_planning_vrep_simulation/Point2d _finish
     (send _finish :deserialize buf ptr-) (incf ptr- (send _finish :serialization-length))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get path_planning_vrep_simulation::Step :md5sum-) "e1ec2cd1e2aeecbfde1f919967aaf705")
(setf (get path_planning_vrep_simulation::Step :datatype-) "path_planning_vrep_simulation/Step")
(setf (get path_planning_vrep_simulation::Step :definition-)
      "int32   number
Point2d start
Point2d finish
float32 duration
================================================================================
MSG: path_planning_vrep_simulation/Point2d
float32 x
float32 y

")



(provide :path_planning_vrep_simulation/Step "e1ec2cd1e2aeecbfde1f919967aaf705")


