(defpackage chun-test
  (:use :cl
        :chun
        :prove))
(in-package :chun-test)

;; NOTE: To run this test file, execute `(asdf:test-system :chun)' in your Lisp.

(plan nil)

(ok 1)

(is 1 1)

(is #(1 2 3) #(1 2 3))

(is #(1 2 3) #(1 2 3) :test #'equalp)

(isnt 1 1)


(finalize)
