(defpackage chun-record-test
  (:use :cl
        :chun-record
        :prove))
(in-package :chun-record-test)

(defvar kpi0
  (make-instance 'kpi
                 :commitid "commit0"
                 :name "superjomn"
                 :task-name "task0"))

(format t "~A~%"
        (kpi-to-list kpi0))

(format t "~A~%"
        (kpi-to-json kpi0))
