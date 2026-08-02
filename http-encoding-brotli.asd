(defsystem "http-encoding-brotli"
  :version "0.1.0"
  :description "br Content-Encoding backend for http-protocol (cl-stack-brotli)"
  :author "egao1980"
  :license "MIT"
  :depends-on ("http-protocol" "cl-stack-brotli")
  :serial t
  :pathname "src"
  :components ((:file "package")
               (:file "backend"))
  :in-order-to ((test-op (test-op "http-encoding-brotli/tests"))))

(defsystem "http-encoding-brotli/tests"
  :depends-on ("http-encoding-brotli" "http-protocol/conformance" "rove")
  :pathname "tests"
  :serial t
  :components ((:file "package")
               (:file "conformance"))
  :perform (test-op (o c)
             (unless (symbol-call :http-encoding-brotli/tests :run-conformance)
               (error "http-protocol/conformance failed for brotli"))))
