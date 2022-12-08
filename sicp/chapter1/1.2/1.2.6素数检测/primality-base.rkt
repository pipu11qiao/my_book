
#lang sicp
(#%require "../../util.rkt")

(define (smallest-divisor n )
  (define (find-divisor n test-divisor)
    (
     cond
      ((> (square test-divisor) n ) n)
      ((devides? n test-divisor) test-divisor)
      (else (find-divisor n (+ test-divisor 1)))
      )
    )
  (find-divisor n 2)
  )
(define (prime? n )
  (=(smallest-divisor n) n)
  )
(#%provide (all-defined))