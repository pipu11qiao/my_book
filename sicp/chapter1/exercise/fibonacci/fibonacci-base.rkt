#lang sicp

(define (fibo n)
  (cond
    ((= n 1)1)
    ((= n 2)1)
    (else (+(fibo (- n 1)) (fibo (- n 2))))
    )
  )

(fibo 1);1
(fibo 3);2
(fibo 5);5
(fibo 7);13