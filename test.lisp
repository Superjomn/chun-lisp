#!/usr/bin/sbcl --script
(load "~/.sbclrc")
(asdf:load-system :chun)

(in-package :chun)

(hello "world")

