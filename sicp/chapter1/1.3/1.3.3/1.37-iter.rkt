
#lang sicp
(#%require "../../util.rkt")

(define (cont-frac n d k)
  (define (cont-frac-inner-iter k res-k)
    (if (= k 0)
        res-k
        (cont-frac-inner-iter (- k 1) (/ (n k) (+ (d k) res-k) )))
    )
  (cont-frac-inner-iter  k (/ (n k ) (d k)) )
  )
(cont-frac (lambda (i) 1.0) (lambda (i) 1.0) 12)
