#lang sicp

(define (count-leaves x)
  (cond
    ((null? x) 0)
    ((not (pair? x)) 1)
    (else (+
           (count-leaves (car x))
           (count-leaves (cdr x))
           ) )
    )
  )

(define (scale-tree tree factor)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* factor tree))
        (else
         (cons (scale-tree (car tree) factor) (scale-tree (cdr tree) factor))
         )
        )

  )
(define x (list (list 1 2) (list 3 4) 5 (list (list 6 7) 8 (list 10 11 (list 12 (list 13 14))))))
x

(scale-tree x 3)

(define (scale-tree-map tree factor)
  (map (lambda (sub-tree)
    (if (pair? sub-tree)
      (scale-tree-map sub-tree factor)
      (* sub-tree factor)
    )
  ) tree)
)
(scale-tree-map x 4)