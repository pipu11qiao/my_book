#lang sicp
(define (double x) (+ x x))
(define (halve x) (/ x 2))

(
 define (* a b)
  (cond
    ((or (= a 0) (= b 0)) 0)
    ((= b 1) a)
    ((even? b) (* (double a ) (halve b)) )
    (else ( + a (* (double a ) (halve (- b 1)))) )
    )
  )

(* 3 8)