
(cl:in-package :asdf)

(defsystem "chapter4-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetSpeed" :depends-on ("_package_SetSpeed"))
    (:file "_package_SetSpeed" :depends-on ("_package"))
  ))