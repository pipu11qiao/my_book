#lang sicp
(define (square x) (* x x))
(define (expo b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expo b (/ n 2) )))
        (else (* b (expo b (- n 1))))
        )
  )


(expo 2 3)