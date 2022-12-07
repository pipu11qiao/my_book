#lang sicp

(define (next-odd n)
  (if (odd? n)
      (+ n 2)
      (+ n 1)
      )
  )

(define (prime? n )
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
  (=(smallest-divisor n) n)
  )

( define (continue-prime n count)
   (cond
     ((= count 0)
      (display "are primes.")
      )
     ((prime? n )
      (display n)
      (newline)
      (continue-prime (next-odd n) (- count 1))
      )
     (else
      (continue-prime (next-odd n) count)
      )
     )
   )
( define (test n)
   (define (test-time n start-time)
     (continue-prime n 3)
     (-(runtime)  start-time)
     )
   (test-time n (runtime))
   )



; (next-odd 2)
; (next-odd 3)
; (contnue-prime 1000 3)
(test 1)
(test 1000)
(test 100000)
(test 10000000)
(test 1000000000)