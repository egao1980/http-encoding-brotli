(in-package #:http-encoding-brotli/tests)

(defun run-conformance ()
  (http-protocol/conformance:run-for-codings http-encoding-brotli:+codings+))
