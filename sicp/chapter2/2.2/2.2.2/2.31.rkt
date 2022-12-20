#lang sicp
(#%require "../../util.rkt")

(define (map-tree fun tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (fun tree))
        (else
         (cons (map-tree fun (car tree)) (map-tree  fun (cdr tree)))
         )
        )

  )