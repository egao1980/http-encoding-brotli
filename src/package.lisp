(defpackage #:http-encoding-brotli
  (:use #:cl #:http-protocol)
  (:export #:+codings+))
(in-package #:http-encoding-brotli)

(defparameter +codings+ '(:br)
  "Codings this backend implements.")
