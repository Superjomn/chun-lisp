(defpackage chun-test
  (:use #:cl)
  (:export :hello)
  )

(in-package #:chun-test)

(defun hello (name)
  "just a hello"
  (format t "hello ~A~%" name))

(hello "supejom")

(describe 'sb-ext:run-program)
;;(describe 'uiop:run-program)
(sb-ext:run-program "/bin/ls" '("-hl") :output :STREAM :error nil)

