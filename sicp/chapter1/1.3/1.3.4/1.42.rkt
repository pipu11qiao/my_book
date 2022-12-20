#lang sicp
(#%require "../../util.rkt")

(define (compose f g)
  (lambda (x)
    (let ((y (g x)))
      (f y)
      )
    )
  )
((compose square inc) 6)