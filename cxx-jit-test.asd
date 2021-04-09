#|
  This file is a part of lcm project.
  Copyright (c) 2021 Islam Omar (io1131@fayoum.edu.eg)
|#

(defpackage :cxx-jit/test/system
  (:use :cl :asdf))

(in-package :cxx-jit/test/system)

(defsystem :cxx-jit-test
  :defsystem-depends-on (:rove-asdf)
  :author "Islam Omar"
  :license "MIT"
  :depends-on (:cxx-jit
               :rove)
  :components ((:module "tests"
                :components
                ((:test-file "functions-test"))))
  :description "Test system for cxx-jit"

  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove)
c)))
