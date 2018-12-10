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
  :depends-on (:cl-mongo :1am :cl-json)
  :components ((:module "src"
                :components
                ((:file "chun")
                 (:file "git")
                 (:file "html")
                 (:file "db")
                 (:file "record")
            )))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "chun-test"))))
