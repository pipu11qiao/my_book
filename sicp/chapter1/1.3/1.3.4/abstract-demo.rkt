
#lang sicp
(#%require "../../util.rkt")

(define dx 0.00001)
(define (deriv g)
  (lambda (x)
    (/ (-(g(+ x dx)) (g x))
       dx
       )
    )
  )

; ((deriv cube) 5)

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))
    )
  )

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess)
)


(define (sqrt x)
  (fixed-point-of-transform (lambda (y)))
)
