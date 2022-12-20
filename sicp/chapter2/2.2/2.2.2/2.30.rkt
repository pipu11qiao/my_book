#lang sicp
(#%require "../../util.rkt")

(define (square-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (square tree))
        (else
         (cons (square-tree (car tree)) (square-tree (cdr tree)))
         )
        )

  )
(define x (list (list 1 2) (list 3 4) 5 (list (list 6 7) 8 (list 10 11 (list 12 (list 13 14))))))
x

(square-tree x)

(define (square-tree-map tree)
  (map (lambda (sub-tree)
    (if (pair? sub-tree)
      (square-tree-map sub-tree)
      (square sub-tree)
    )
  ) tree)
)
(square-tree-map x)