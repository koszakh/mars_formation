
(cl:in-package :asdf)

(defsystem "mars_formation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AllPathes" :depends-on ("_package_AllPathes"))
    (:file "_package_AllPathes" :depends-on ("_package"))
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "Point2d" :depends-on ("_package_Point2d"))
    (:file "_package_Point2d" :depends-on ("_package"))
  ))