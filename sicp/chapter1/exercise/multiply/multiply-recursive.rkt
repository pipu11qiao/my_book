#lang sicp
;求a*b
;a * b = 2*(a*(b/2)) = (2*a)*(b/2)
(define (double x) (+ x x ))
(define (halve x ) (/ x 2))
(define (mul-recur a b )
  (
   cond
    ((or (= a 0) (= b 0)) 0)
    ((even? b) (double (mul-recur a (halve b))) )
    (else (+ a (mul-recur a (- b 1))))
    )
  )

(mul-recur 2 0)
(mul-recur 0 3)
(mul-recur 2 3)
(mul-recur 5 3)