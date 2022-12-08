#lang sicp
(#%require "../../util.rkt")

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a )
         (sum term (next a) next b)
         )
      )
  )

(define (integral f  a b dx)
  (define ( add-dx x) (+ x dx))
  (*(sum f (+ a(/ dx 2.0) ) add-dx b) dx)
  )

(define (simpson-rule f a b n)
  (define h (/ (- b a ) n))
  (define (factor x)
    (cond
      ((or (= x 0) (= x n)) 1)
      ((even? x) 2)
      (else 4)
      ))
  (define (simpson-term x)
    (* (factor x) (f (+ a  (* x h))))
    )

  (* (sum simpson-term  0 inc n ) (/ h 3))
  )

(integral cube 0 1 0.01)
(simpson-rule  cube 0 1 10)