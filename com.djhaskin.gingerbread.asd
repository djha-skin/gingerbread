(defsystem "com.djhaskin.stamp"
  :version "0.1.0"
  :author "Daniel Jay Haskin"
  :license "MIT"
  :depends-on (
               "alexandria"
               "trivial-features"
               )
  :components ((:module "src"
          :components
          ((:file "wbtrees"))))
  :description "Pennant Lines"
  :in-order-to (
                (test-op (test-op "com.djhaskin.stamp/tests"))))

(defsystem "com.djhaskin.stamp/tests"
  :version "0.1.0"
  :author "Daniel Jay Haskin"
  :license "MIT"
  :depends-on (
               "com.djhaskin.stamp"
               "parachute")

  :components ((:module "test"
                :components
                ((:file "wbtrees"))))
  :description "Test system for Pennant Lines"
  :perform (asdf:test-op (op c)

                         (uiop:symbol-call
                           :parachute
                           :test :com.djhaskin.stamp/tests/wbtrees)))
