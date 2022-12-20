#lang sicp
(#%require "../../util.rkt")

(define (repeated f times)
  (lambda (x)
    (define (repeat-fun times)
      (if(= times 1)
         (f x)
         (f (repeat-fun (- times 1)))
         )
      )

    (repeat-fun times)
    )

  )
((repeated square 2) 5)
