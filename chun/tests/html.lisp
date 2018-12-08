(defpackage chun-html-test
  (:use :cl
        :chun-html
        :prove))
(in-package :chun-html-test)

;; NOTE: To run this test file, execute `(asdf:test-system :chun)' in your Lisp.

(plan nil)

(as span "this is a span")
(with span
  (as span "span0")
  (as p "p0"))


(finalize)
