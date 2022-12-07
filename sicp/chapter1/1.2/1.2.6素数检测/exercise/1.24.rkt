
#lang sicp
; 费马小定理： 如果n是一个素数，a是小于n的任意正整数，那么a的n次方与a模n同余
(define (square x) (* x x ))
(define (expmod base exp m )
  (
   cond
    ((= exp 0) 1)
    ((even? exp)
     (remainder (square (expmod base (/ exp 2) m) ) m)
     )
    ( else
      (remainder (* base (expmod base (- exp 1) m)) m)
      )
    )

  )
(define(fermat-test n)
  (define (try-it a ) (= (expmod a n n ) a))
  (try-it ( + 1 (random(- n 1))))
  )

(define (fast-prime? n times)
  (cond
    ((= times 0 )true)
    ((fermat-test n )(fast-prime? n (- times 1)))
    (else false)
    )
  )
(define (prime? n )
  (fast-prime? n 10)
  )

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

(search-for-primes 1000001 3)
(newline)
(search-for-primes 100000001 3)