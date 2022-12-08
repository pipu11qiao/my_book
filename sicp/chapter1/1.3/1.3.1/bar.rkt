#lang sicp
(#%require "../../util.rkt")

(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))
      )
  )

(define (sum-cube a b)
  (if (> a b)
      0
      (+ (cube a ) (sum-cube (+ a 1) b))
      )
  )

(define (pi-sum a b)
  (if (> a b)
      0
      (+ ( / 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))
      )
  )

; (sum-integers 10 20)
; (sum-cube 10 20)
(pi-sum 10 20)
