
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "nstr" :depends-on ("_package_nstr"))
    (:file "_package_nstr" :depends-on ("_package"))
  ))