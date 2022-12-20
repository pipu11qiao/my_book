#lang sicp
(#%require "../../util.rkt")


(define l (list 1 2 3))

(define (subsets s)
  (if(null? s)
     (list nil)
     (let ((rest (subsets (cdr s))))
       (append rest (map (lambda (x) (cons (car s) x)) rest))
       )
     )
  )


  (subsets l)