#lang sicp
(#%require "../../util.rkt")

(define (average-damp f)
  (lambda (x) (average x (f x)))
  )

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y))) 1.0)
  )


(sqrt 4)


((average-damp square) 10)