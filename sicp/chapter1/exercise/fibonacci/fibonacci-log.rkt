#lang sicp

(define(square x) (* x x))

(define (fibo n)
  (define (fibo-iter a b p q  count)
    3
    (cond
      ((= count 0)b)
      ((even? count)
       (fibo-iter a
                  b
                  ; p'
                  (+(square p )(square q))
                  ; q'
                  (+(* 2 p q )(square q))
                  (/ count 2)
                  )
       )
      (else (fibo-iter
             (+(* b q ) (* a q) (* q p))
             (+ (* b p) (* a q))
             p
             q
             (- count 1)
             ))
      )

    )

  (fibo-iter 1 0 0 1 n)
  )

(fibo 1);1
(fibo 3);2
(fibo 5);5
(fibo 7);13