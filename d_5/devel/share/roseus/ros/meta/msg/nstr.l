;; Auto-generated. Do not edit!


(when (boundp 'meta::nstr)
  (if (not (find-package "META"))
    (make-package "META"))
  (shadow 'nstr (find-package "META")))
(unless (find-package "META::NSTR")
  (make-package "META::NSTR"))

(in-package "ROS")
;;//! \htmlinclude nstr.msg.html


(defclass meta::nstr
  :super ros::object
  :slots (_num _str ))

(defmethod meta::nstr
  (:init
   (&key
    ((:num __num) 0.0)
    ((:str __str) "")
    )
   (send-super :init)
   (setq _num (float __num))
   (setq _str (string __str))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:str
   (&optional __str)
   (if __str (setq _str __str)) _str)
  (:serialization-length
   ()
   (+
    ;; float64 _num
    8
    ;; string _str
    4 (length _str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _num
       (sys::poke _num (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _str
       (write-long (length _str) s) (princ _str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num
     (setq _num (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get meta::nstr :md5sum-) "a2a1e50211f32bf06af60c533a1ce29f")
(setf (get meta::nstr :datatype-) "meta/nstr")
(setf (get meta::nstr :definition-)
      "float64 num
string str

")



(provide :meta/nstr "a2a1e50211f32bf06af60c533a1ce29f")


