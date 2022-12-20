#lang sicp

(define (make-point x y)
  (cons x y)
  )
( define (x-point x)
   (car x)
   )
( define (y-point x)
   (cdr x)
   )

; print
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")
  )

(#%provide (all-defined))