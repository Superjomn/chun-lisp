(defpackage chun-git
  (:use :cl :sb-ext)
  (:export ))
(in-package :chun-git)

(defun git-clone (url)
  "git clone"
  (format t "git clone~%")
  (run-program "git" '("clone" url) :output :STREAM :error nil))


