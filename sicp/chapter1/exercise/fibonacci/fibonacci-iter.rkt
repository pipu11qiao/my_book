#lang sicp

(define (fibo n)
  (define (fibo-iter a b n)
    (cond
      ((= n 0)b)
      (else (fibo-iter (+ a b) a (- n 1)))
      )
    )
  (fibo-iter 1 0 n)
  )

(fibo 1);1
(fibo 3);2
(fibo 5);5
(fibo 7);13