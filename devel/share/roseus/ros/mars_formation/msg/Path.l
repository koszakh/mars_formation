;; Auto-generated. Do not edit!


(when (boundp 'mars_formation::Path)
  (if (not (find-package "MARS_FORMATION"))
    (make-package "MARS_FORMATION"))
  (shadow 'Path (find-package "MARS_FORMATION")))
(unless (find-package "MARS_FORMATION::PATH")
  (make-package "MARS_FORMATION::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass mars_formation::Path
  :super ros::object
  :slots (_platform_id _path_points _goal _final_orient_point ))

(defmethod mars_formation::Path
  (:init
   (&key
    ((:platform_id __platform_id) 0)
    ((:path_points __path_points) (let (r) (dotimes (i 0) (push (instance mars_formation::Point2d :init) r)) r))
    ((:goal __goal) (instance mars_formation::Point2d :init))
    ((:final_orient_point __final_orient_point) (instance mars_formation::Point2d :init))
    )
   (send-super :init)
   (setq _platform_id (round __platform_id))
   (setq _path_points __path_points)
   (setq _goal __goal)
   (setq _final_orient_point __final_orient_point)
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
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:final_orient_point
   (&rest __final_orient_point)
   (if (keywordp (car __final_orient_point))
       (send* _final_orient_point __final_orient_point)
     (progn
       (if __final_orient_point (setq _final_orient_point (car __final_orient_point)))
       _final_orient_point)))
  (:serialization-length
   ()
   (+
    ;; int32 _platform_id
    4
    ;; mars_formation/Point2d[] _path_points
    (apply #'+ (send-all _path_points :serialization-length)) 4
    ;; mars_formation/Point2d _goal
    (send _goal :serialization-length)
    ;; mars_formation/Point2d _final_orient_point
    (send _final_orient_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _platform_id
       (write-long _platform_id s)
     ;; mars_formation/Point2d[] _path_points
     (write-long (length _path_points) s)
     (dolist (elem _path_points)
       (send elem :serialize s)
       )
     ;; mars_formation/Point2d _goal
       (send _goal :serialize s)
     ;; mars_formation/Point2d _final_orient_point
       (send _final_orient_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _platform_id
     (setq _platform_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mars_formation/Point2d[] _path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_points (let (r) (dotimes (i n) (push (instance mars_formation::Point2d :init) r)) r))
     (dolist (elem- _path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; mars_formation/Point2d _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;; mars_formation/Point2d _final_orient_point
     (send _final_orient_point :deserialize buf ptr-) (incf ptr- (send _final_orient_point :serialization-length))
   ;;
   self)
  )

(setf (get mars_formation::Path :md5sum-) "3608af306691de0c868f4fded45490ff")
(setf (get mars_formation::Path :datatype-) "mars_formation/Path")
(setf (get mars_formation::Path :definition-)
      "int32     platform_id
Point2d[] path_points
Point2d goal
Point2d final_orient_point

================================================================================
MSG: mars_formation/Point2d
float32 x
float32 y

")



(provide :mars_formation/Path "3608af306691de0c868f4fded45490ff")


