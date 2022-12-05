#lang sicp

(define (get-taget x) (* x x))

(define (get-next guess x)
  (/ (+ guess (/ x guess))2)
  )

(define (good-enough? guess x)
  (< (abs(-(get-taget guess )x)) 0.001)
  )

(define (base-iter guess x)
  (if (good-enough? guess x)
      guess
      (base-iter (get-next guess x) x)
      )
  )
(define (sqrt x)
  (base-iter 1.0 x)
  )

(sqrt 9)

(sqrt(+ 1000000000000))
(sqrt(+ 0.00003))