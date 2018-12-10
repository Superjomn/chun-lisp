#!/usr/bin/sbcl --script
(load "~/.sbclrc")

(setf asdf:*central-registry*
       (list* '*default-pathname-defaults*
              #p"/home/chunwei/project2/chun-lisp/chun/"
              #p"/usr/share/common-lisp/systems/"
              #p"/Users/yanchunwei/chun-lisp/chun/"
              asdf:*central-registry*))

(asdf:load-system :chun)

(in-package :chun)

(hello "world")
(my-add 1 2)

(asdf:test-system :chun)
