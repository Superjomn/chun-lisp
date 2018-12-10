#|
  This file is a part of chun project.
  Copyright (c) 2018 Superjomn (yanchunwei@outlook.com)
|#

(defsystem "chun-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Superjomn"
  :license ""
  :depends-on ("chun"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "chun")
                 (:test-file "git")
		             (:test-file "html")
                 (:test-file "record")
                 (:test-file "db")
		 )))
  :description "Test system for chun"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
