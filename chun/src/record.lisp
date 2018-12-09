;; All the data structure for records.
(defpackage chun-record
  (:use :cl :sb-ext)
  (:export ))
(in-package :chun-record)

(defclass commit()
  ((commitid 
     :accessor commit-id 
     :initarg :commitid)
   (tasks 
     :accessor commit-tasks 
     :initarg :tasks)
   ;; running, fail, success
   (state 
     :accessor commit-state 
     :initarg :state)))

(defclass task()
  ;; task's name
  ((name
     :accessor task-name
     :initarg :name)
   ;; the commitid of the codebase the task to test on.
   (commitid
     :accessor task-commitid
     :initarg :commitid)
   ;; the kpis of the test result of this task.
   (kpis
     :accessor task-kpis
     :initarg :kpis))

(defclass kpi()
  "KPI data view"
  ((commitid
     :accessor kpi-commitid
     :initarg :commitid)
   (task-name
     :accessor kpi-task-name
     :initarg :task-name)
   (name
     :accessor kpi-name
     :initarg :name)
   (type
     :accessor kpi-type
     :initarg :type)
   (value
     :accessor kpi-value
     :initarg :value)
   (unit
     :accessor kpi-unit
     :initarg :unit)
   (repr
     :accessor kpi-repr
     :initarg :repr)
   (desciption
     :accessor kpi-description
     :initarg :description)
   (actived
     :accessor kpi-actived
     :initarg :actived)))

(defclass kpi-baseline
  "Baseline of eatch KPI"
  ((task-name
     :accessor kpi-baseline-task-name
     :initarg :task-name)
   (kpi-name
     :accessor kpi-baseline-kpi-name
     :initarg :kpi-name)))


;; retrive-record for commit, task, kpi, kpi-baseline
(defmethod retrive-record ((x commit))
  "Retrive a commit record from database using the commit-id"
  nil)

(defmethod update-baseline ((x kpi-baseline))
  "Update a KPI baseline."
  nil)
