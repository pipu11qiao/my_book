#lang sicp
(define (get-taget x) (* x x x))

(define (get-next y x )
  (/ (+
      (/ x (* y y))
      (* 2  y)
      ) 3)
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
(define (cubert x)
  (base-iter 1.0 x)
  )

(cubert 8)
; (get-next 8 1)