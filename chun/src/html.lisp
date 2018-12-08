(defpackage chun-html
  (:use :cl :sb-ext)
  (:export :as :with))
(in-package :chun-html)

(defmacro as (tag content)
  `(format t "<~(~A~)>~A</~(~A~)>"
           ',tag ,content ',tag))

(defmacro with (tag &rest body)
  `(progn
     (format t "~&<~A>~%" ',tag)
     ,@body
     (format t "~&</~A>~%" ',tag)))
