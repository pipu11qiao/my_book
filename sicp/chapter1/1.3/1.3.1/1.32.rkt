#lang sicp
(define (accumulate combiner null-value term a next b)
  (if(> a b)
     null-value
     (combiner (term a )  (accumulate combiner null-value term (next a ) next b))
     )
  )
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a res)
    (if(> a b)
       res
       (iter   (next a ) ( combiner res (term a ) ))
       )
    )
  (iter  a  null-value )
  )

( define (sum  term a  next b)
   (define (add x y)(+ x y))
   (accumulate add 0 term a next b)
   )
( define (product  term a  next b)
   (define (fact x y)(* x y))
   (accumulate fact 1 term a next b)
   )

;test
(define (term  a) a )
(define (inc a) (+ a 1))
(define (sum-integers a b)
  (sum term a  inc b )
  )

(sum-integers 10 20)

(define (factorial a b)
  (product term a inc b)
  )

(factorial 1 3)