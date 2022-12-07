
#lang sicp
(define (square x) (* x x ))
(define (devides? n test-divisor) (= (remainder n test-divisor) 0 ))
(define (next n)
  (if (= n 2)
      3
      (+ n 2)
      )
  )
(define (smallest-divisor n )
  (define (find-divisor n test-divisor)
    (
     cond
      ((> (square test-divisor) n ) n)
      ((devides? n test-divisor) test-divisor)
      (else (find-divisor n (next  test-divisor )))
      )
    )
  (find-divisor n 2)
  )

(define (prime? n ) (=(smallest-divisor n) n))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  )

(define ( get-count n count start-time )
  (newline)
  (display n )
  (report-prime (- (runtime) start-time))
  (- count 1)
  )
(
 define (timed-prime-test n count)
  (define (start-prime-test n count start-time )
    (
     if (> count 0)
        (if (prime? n )
            (start-prime-test (+ n 2) (get-count  n count start-time) (runtime) )
            (start-prime-test (+ n 2) count (runtime) )
            )
        )
    )

  (start-prime-test n count (runtime))
  )

(define (search-for-primes start count)
  (timed-prime-test start count)
  )

(search-for-primes 10000000001 3)
(newline)
(search-for-primes 1000000000001 3)