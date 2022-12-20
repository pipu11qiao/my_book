#lang sicp

(define (fringe tree)
  (define (fringe-inner tree list)
    (cond
      ((null? tree) list)
      (else
       (let ((cur (car tree)))
         (if (pair? cur)
             (fringe-inner (cdr tree) (fringe-inner cur list))
             (fringe-inner (cdr tree) (cons cur list))
             )
         )
       )
      )
    )
  (reverse (fringe-inner tree nil))
  )

(define x (list (list 1 2) (list 3 4) 5 (list (list 6 7) 8 (list 10 11 (list 12 (list 13 14))))))
x
(fringe x)
