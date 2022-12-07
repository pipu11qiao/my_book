#lang sicp
(define (square x) (* x x ))
(define (devides? n test-divisor) (= (remainder n test-divisor) 0 ))
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

(define (prime? n ) (=(smallest-divisor n) n))

; (prime? 2 )
; (prime? 4 )
; (prime? 5 )
; (prime? 6 )
(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)