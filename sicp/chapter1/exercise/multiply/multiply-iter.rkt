#lang sicp
;求a*b
;a * b = 2*(a*(b/2)) = (2*a)*(b/2)
(define (double x) (+ x x ))
(define (halve x ) (/ x 2))
(define (mul-iter res a b )
  (
   cond
    ((or (= a 0) (= b 0)) res)
    ((even? b) (mul-iter res (double a) (halve b)))
    (else (mul-iter (+ res a)  a (- b 1)))
    )
  )

(mul-iter 0 2 0)
(mul-iter 0 0 3)
(mul-iter 0 2 3)
(mul-iter 0 5 3)