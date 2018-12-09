#!/usr/bin/sbcl --script
(load "~/.sbclrc")
(asdf:load-system :chun)

(in-package :chun)

(hello "world")
(my-add 1 2)

(asdf:test-system :chun)
