#lang sicp
(define (for-each proc items)
  (cond ((null? items) )
        (else
         (proc (car items))
         (for-each proc (cdr items))
         )
        )
  )

(for-each (lambda (x)(display (+ x 2)) ) (list 1 2 3 4))