;; Auto-generated. Do not edit!


(when (boundp 'mars_formation::AllPathes)
  (if (not (find-package "MARS_FORMATION"))
    (make-package "MARS_FORMATION"))
  (shadow 'AllPathes (find-package "MARS_FORMATION")))
(unless (find-package "MARS_FORMATION::ALLPATHES")
  (make-package "MARS_FORMATION::ALLPATHES"))

(in-package "ROS")
;;//! \htmlinclude AllPathes.msg.html


(defclass mars_formation::AllPathes
  :super ros::object
  :slots (_paths_list ))

(defmethod mars_formation::AllPathes
  (:init
   (&key
    ((:paths_list __paths_list) (let (r) (dotimes (i 0) (push (instance mars_formation::Path :init) r)) r))
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
    ;; mars_formation/Path[] _paths_list
    (apply #'+ (send-all _paths_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mars_formation/Path[] _paths_list
     (write-long (length _paths_list) s)
     (dolist (elem _paths_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mars_formation/Path[] _paths_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths_list (let (r) (dotimes (i n) (push (instance mars_formation::Path :init) r)) r))
     (dolist (elem- _paths_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mars_formation::AllPathes :md5sum-) "2b2a62638c1a94490c0dfa8d5e80347a")
(setf (get mars_formation::AllPathes :datatype-) "mars_formation/AllPathes")
(setf (get mars_formation::AllPathes :definition-)
      "Path[] paths_list
================================================================================
MSG: mars_formation/Path
int32     platform_id
Point2d[] path_points
Point2d goal
Point2d final_orient_point

================================================================================
MSG: mars_formation/Point2d
float32 x
float32 y

")



(provide :mars_formation/AllPathes "2b2a62638c1a94490c0dfa8d5e80347a")


