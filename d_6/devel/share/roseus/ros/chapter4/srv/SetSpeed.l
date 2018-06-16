;; Auto-generated. Do not edit!


(when (boundp 'chapter4::SetSpeed)
  (if (not (find-package "CHAPTER4"))
    (make-package "CHAPTER4"))
  (shadow 'SetSpeed (find-package "CHAPTER4")))
(unless (find-package "CHAPTER4::SETSPEED")
  (make-package "CHAPTER4::SETSPEED"))
(unless (find-package "CHAPTER4::SETSPEEDREQUEST")
  (make-package "CHAPTER4::SETSPEEDREQUEST"))
(unless (find-package "CHAPTER4::SETSPEEDRESPONSE")
  (make-package "CHAPTER4::SETSPEEDRESPONSE"))

(in-package "ROS")





(defclass chapter4::SetSpeedRequest
  :super ros::object
  :slots (_desired_speed ))

(defmethod chapter4::SetSpeedRequest
  (:init
   (&key
    ((:desired_speed __desired_speed) 0.0)
    )
   (send-super :init)
   (setq _desired_speed (float __desired_speed))
   self)
  (:desired_speed
   (&optional __desired_speed)
   (if __desired_speed (setq _desired_speed __desired_speed)) _desired_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _desired_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _desired_speed
       (sys::poke _desired_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _desired_speed
     (setq _desired_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass chapter4::SetSpeedResponse
  :super ros::object
  :slots (_previous_speed _new_speed _stalled ))

(defmethod chapter4::SetSpeedResponse
  (:init
   (&key
    ((:previous_speed __previous_speed) 0.0)
    ((:new_speed __new_speed) 0.0)
    ((:stalled __stalled) nil)
    )
   (send-super :init)
   (setq _previous_speed (float __previous_speed))
   (setq _new_speed (float __new_speed))
   (setq _stalled __stalled)
   self)
  (:previous_speed
   (&optional __previous_speed)
   (if __previous_speed (setq _previous_speed __previous_speed)) _previous_speed)
  (:new_speed
   (&optional __new_speed)
   (if __new_speed (setq _new_speed __new_speed)) _new_speed)
  (:stalled
   (&optional __stalled)
   (if __stalled (setq _stalled __stalled)) _stalled)
  (:serialization-length
   ()
   (+
    ;; float32 _previous_speed
    4
    ;; float32 _new_speed
    4
    ;; bool _stalled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _previous_speed
       (sys::poke _previous_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _new_speed
       (sys::poke _new_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _stalled
       (if _stalled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _previous_speed
     (setq _previous_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _new_speed
     (setq _new_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _stalled
     (setq _stalled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass chapter4::SetSpeed
  :super ros::object
  :slots ())

(setf (get chapter4::SetSpeed :md5sum-) "7baf09683aadda2fb755474c2726a14c")
(setf (get chapter4::SetSpeed :datatype-) "chapter4/SetSpeed")
(setf (get chapter4::SetSpeed :request) chapter4::SetSpeedRequest)
(setf (get chapter4::SetSpeed :response) chapter4::SetSpeedResponse)

(defmethod chapter4::SetSpeedRequest
  (:response () (instance chapter4::SetSpeedResponse :init)))

(setf (get chapter4::SetSpeedRequest :md5sum-) "7baf09683aadda2fb755474c2726a14c")
(setf (get chapter4::SetSpeedRequest :datatype-) "chapter4/SetSpeedRequest")
(setf (get chapter4::SetSpeedRequest :definition-)
      "float32 desired_speed
---
float32 previous_speed
float32 new_speed
bool stalled

")

(setf (get chapter4::SetSpeedResponse :md5sum-) "7baf09683aadda2fb755474c2726a14c")
(setf (get chapter4::SetSpeedResponse :datatype-) "chapter4/SetSpeedResponse")
(setf (get chapter4::SetSpeedResponse :definition-)
      "float32 desired_speed
---
float32 previous_speed
float32 new_speed
bool stalled

")



(provide :chapter4/SetSpeed "7baf09683aadda2fb755474c2726a14c")


