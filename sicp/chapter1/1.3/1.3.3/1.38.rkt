
#lang sicp
(#%require "../../util.rkt")

(define (cont-frac n d k)
  (define (cont-frac-inner i)
    (if (= i k)
        (/ (n i ) (d i))
        (/ (n i) (+ (d i) (cont-frac-inner (+ i 1))))
        )
    )
  (cont-frac-inner  1)
  )
(cont-frac (lambda (i) 1.0)
           (lambda (i)
             (if (= (remainder i 3) 2)
                 (* 2 (/ (+  i 1) 3))
                 1
                 )
             )

           30)
