
#lang sicp
; 费马小定理： 如果n是一个素数，a是小于n的任意正整数，那么a的n次方与a模n同余
(define (square x) (* x x ))
(define (expo-recur b n )
  (
   cond
    ((= n 0) 1)
    ((even? n) (square (expo-recur b (/ n 2))))
    (else (* b (expo-recur b (- n 1))))
    )
  )
(define (expmod base exp m )
  (remainder (expo-recur base exp) m)
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


(fast-prime? 2 2)
(fast-prime? 4 2)
(fast-prime? 5 2)
(fast-prime? 6 2)
