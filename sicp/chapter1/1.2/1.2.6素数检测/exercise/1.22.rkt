
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

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  )
(
 define (timed-prime-test n count)
  (newline)
  (display n)
  (define (start-prime-test n start-time)
    (define is-prime (prime? n))
    (
     if(
        (> count 0)
        (if is-prime
            (report-prime (- (runtime) start-time ))
            )
        (if is-prime
            ( timed-prime-test (+ n 2) (- count 1))
            ( timed-prime-test (+ n 2)  count )
            ))
       )
    )
  (start-prime-test n (runtime))
  )
(define (search-for-primes start end)
  (timed-prime-test start)
  (if (< start end)
      (search-for-primes (+ start 2) end )
      )
  )
; (timed-prime-test 11)
(search-for-primes 10000000000001 10000000000100)