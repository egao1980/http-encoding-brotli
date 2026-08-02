(in-package #:http-encoding-brotli)

(defmethod decode-content-coding ((coding (eql :br)) (input stream) &key)
  (cl-stack-brotli:make-decompressing-stream input))

(defmethod decode-content-coding ((coding (eql :br)) input &key)
  (cl-stack-brotli:decompress (coerce-to-octets input)))

(defmethod encode-content-coding ((coding (eql :br)) (input stream) &key level quality)
  (declare (ignore level))
  (cl-stack-brotli:make-compressing-stream input :quality (or quality 5)))

(defmethod encode-content-coding ((coding (eql :br)) input &key level quality)
  (declare (ignore level))
  (cl-stack-brotli:compress (coerce-to-octets input) :quality (or quality 5)))
