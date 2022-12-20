
#lang sicp


(define (exp x n)
  (define (exp-iter t  res)
    (if(= t n )
       res
       (exp-iter (+ t 1) (* res x))
       )
    )
  (exp-iter 0 1)
  )

(define (cons x y)
  (lambda (m) (m x y))
  )
(define (car z)
  (z (lambda (p  q) (exp 2 p)))
  )
(define (cdr z)
  (z (lambda (p  q) (exp 3 q)))
  )