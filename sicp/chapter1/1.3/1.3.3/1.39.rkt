
#lang sicp
(#%require "../../util.rkt")

(define (cont-frac n d k)
  (define (cont-frac-inner i)
    (if (= i k)
        (/ (n i ) (d i))
        (/ (n i) (- (d i) (cont-frac-inner (+ i 1))))
        )
    )
  (cont-frac-inner  1)
  )
; (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 12)

(define (tancf x k)

  (cont-frac (
              lambda (i)
               (if (= i 1)
                   x
                   (* x x )
                   )

               )
             (lambda (i) (- (* i 2) 1))
             12)
  )
(tancf 2.0 16)