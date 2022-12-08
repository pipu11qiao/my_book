#lang sicp
(#%require "../../util.rkt")

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a ) (+ result (term a )) )
        )
    )
  (iter a 0)
  )

(define (inc a) (+ a 1))
(define (term  a) a )
(define (sum-iter-integers a b)
  (sum-iter term a  inc b )
  )

(sum-iter-integers 10 20)

(define (sum-iter-cube a b)
  (sum-iter cube a  inc b )
  )

(sum-iter-cube 10 20)