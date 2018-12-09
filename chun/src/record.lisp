;; All the data structure for records.
(defpackage chun-record
  (:use :cl :sb-ext :cl-json)
  (:export :commit
           :task
           :kpi
           :kpi-baseline
           :kpi-to-list
           :kpi-to-json))
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
     :initarg :kpis)))

 (defclass kpi()
  ((commitid
     :accessor kpi-commitid
     :initform (error "commitid should be set for kpi")
     :initarg :commitid)
   (task-name
     :accessor kpi-task-name
     :initform ""
     :initarg :task-name)
   (name
     :accessor kpi-name
     :initform ""
     :initarg :name)
   (type
     :accessor kpi-type
     :initform ""
     :initarg :type)
   (value
     :accessor kpi-value
     :initform ""
     :initarg :value)
   (unit
     :accessor kpi-unit
     :initform ""
     :initarg :unit)
   (repr
     :accessor kpi-repr
     :initform ""
     :initarg :repr)
   (desciption
     :accessor kpi-description
     :initform ""
     :initarg :description)
   (actived
     :accessor kpi-actived
     :initform nil
     :initarg :actived)))

(defclass kpi-baseline()
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

(defmethod kpi-to-list ((x kpi))
  "transform kpi to a list"
  (list
   (cons "commitid" (kpi-commitid x))
   (cons "task-name" (kpi-task-name x))
   (cons "name" (kpi-name x))
   (cons "type" (kpi-type x))
   (cons "value" (kpi-value x))
   (cons "unit" (kpi-unit x))
   (cons "repr" (kpi-repr x))
   (cons "description" (kpi-description x))
   (cons "actived" (kpi-actived x))
   ))

(defmethod kpi-to-json ((x kpi))
  "transform kpi to json"
  (json:encode-json-to-string (kpi-to-list x)))

(defmethod update-baseline ((x kpi-baseline))
  "Update a KPI baseline."
  nil)
