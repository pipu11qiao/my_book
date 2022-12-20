#lang sicp
(#%require "./base.rkt")

(define (reverse sequence)
  (accumulate (lambda (x y)
                (append y  (list x))
                ) nil sequence)
  )

(define l1 (list 1 2 3 4))


(reverse l1)