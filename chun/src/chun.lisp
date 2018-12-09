(defpackage chun
  (:use :cl :1am)
  (:export :hello :my-add)
  )
(in-package :chun)

(defun hello (name)
  "some hello"
  (format t "Hello ~A~%" name))

(defun my-add (a b)
  (+ a b))
