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
(define x (list (list 1 2) (list 3 4) 5 (list (list 6 7) 8 (list 10 11 (list 12 (list 13 14))))))
x

(map-tree  square   x)

(define (map-tree-map fun tree)
  (map (lambda (sub-tree)
    (if (pair? sub-tree)
      (map-tree-map sub-tree)
      (fun sub-tree)
    )
  ) tree)
)
; (square-tree-map x)