#lang sicp
(#%require "../../util.rkt")



(define (double f)
  (lambda(x)
    (let ((y (f x)))
      (f y)
      )
    )
  )

; ((double inc) 5)
; (((double double) inc) 5)
(((double (double double)) inc) 5)