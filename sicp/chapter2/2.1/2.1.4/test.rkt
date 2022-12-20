#lang sicp
(#%require "./interval.rkt")


(define i1 (make-interval 4.9 5.3))
(define i2 (make-interval 4.8 6.6))
(print-interval i1)
(print-interval i2)

; (print-interval (add-interval i1 i2))
(print-interval (sub-interval i1 i2))
; (print-interval (mul-interval i1 i2))
; (print-interval (div-interval i1 i2))