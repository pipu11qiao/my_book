#lang sicp
(#%require "./point.rkt")
(#%require "./segment.rkt")


(define s1 (make-segment (make-point 2 3) (make-point 6 3)))


(print-point (midpoint-segment s1))
