#|
  This file is a part of chun project.
  Copyright (c) 2018 Superjomn (yanchunwei@outlook.com)
|#

#|
  Author: Superjomn (yanchunwei@outlook.com)
|#

(defsystem "chun"
  :version "0.1.0"
  :author "Superjomn"
  :license ""
  :depends-on ("1am")
  :components ((:module "src"
                :components
                ((:file "chun"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "chun-test"))))