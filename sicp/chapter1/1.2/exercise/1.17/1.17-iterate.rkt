#lang sicp
(define (double x) (+ x x))
(define (halve x) (/ x 2))

(
 define (* res a b)
  (cond
    ((or (= a 0) (= b 0)) 0)
    ((= b 1) (+ res a))
    ((even? b) (* res (double a ) (halve b)) )
    (else (* (+ res a) a (- b 1)))
    )
  )

(* 0 3 8)