(in-package #:http-encoding-brotli)

(defmethod decode-content-coding ((coding (eql :br)) (input stream) &key)
  (compression-protocol:make-decompressing-stream input :algorithm :br))

(defmethod decode-content-coding ((coding (eql :br)) input &key)
  (compression-protocol:decompress (coerce-to-octets input) :algorithm :br))

(defmethod encode-content-coding ((coding (eql :br)) (input stream) &key level quality)
  (make-octet-input-stream
   (compression-protocol:compress input :algorithm :br
                                  :level (or quality level 5))))

(defmethod encode-content-coding ((coding (eql :br)) input &key level quality)
  (compression-protocol:compress (coerce-to-octets input) :algorithm :br
                                 :level (or quality level 5)))
