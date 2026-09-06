(defsystem "http-encoding-brotli"
  :version "0.1.1"
  :description "br Content-Encoding adapter over compression-protocol"
  :author "egao1980"
  :license "MIT"
  :depends-on ("http-protocol" "compression-protocol" "cl-stack-brotli")

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
