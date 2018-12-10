;; Some interface for database operations.
(defpackage chun-db
  (:use :cl :sb-ext)
  (:export :open-db
           :is-default-db))
(in-package :chun-db)

(defconstant *default-db* "__test__")

(defparameter *db* *default-db*)

(defun open-db (name)
  (if (not (eql name *default-db*))
    (error "another db has been opened"))
  (setf *db* name)
  (db.use name))

(defun is-default-db()
  "tell whether the db is default"
  (eql *db* *default-db*))
