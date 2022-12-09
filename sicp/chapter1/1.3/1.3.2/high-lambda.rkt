#lang sicp
(#%require "../../util.rkt")

(define (sum term a next b)

  (if (> a b)
      0
      (+ (term a )
         (sum term (next a) next b)
         )
      )
  )

(define (sum-integers a b)
  (sum (lambda (x) x)a (lambda (x) (+ x 1)) b)
  )

; (sum-integers 1 4)

(define (sum-cube a b)
  (sum (lambda (x) (cube x))a (lambda (x) (+ x 1)) b)
  )

; (sum-cube 1 3)
(define (pi-sum a b)
  (sum (lambda(x) (/ 1.0 ( * x (+ x 2)))) a (lambda (x) (+ x 4)) b)
  )
(pi-sum 10 20)