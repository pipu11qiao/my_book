#lang sicp

;求b的n次方  b^n = b^n/2^2
(define (square x) (* x x ) )
(define (expo-recur b n )
  (
   cond
    ((= n 0) 1)
    ((even? n) (square (expo-recur b (/ n 2))))
    (else (* b (expo-recur b (- n 1))))
    )
  )
(expo-recur 2 0)
(expo-recur 2 3)
(expo-recur 2 4)