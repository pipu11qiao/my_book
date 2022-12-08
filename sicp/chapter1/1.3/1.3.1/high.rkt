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
(define (inc a) (+ a 1))
(define (term  a) a )
(define (sum-integers a b)
  (sum term a  inc b )
  )

(sum-integers 10 20)

(define (sum-cube a b)
  (sum cube a  inc b )
  )

; (sum-cube 10 20)

(define (pi-sum a b)
  (define (term  a) ( / 1.0 (* a (+ a 2))) )
  (define (next a ) (+ a 4))
  (sum term a  next b )
  )

; (pi-sum 10 20)

(define (integral f  a b dx)
  (define ( add-dx x) (+ x dx))
  (*(sum f (+ a(/ dx 2.0) ) add-dx b) dx)
  )

; (integral cube 0 1 0.01)
; (integral cube 0 1 0.001)
; (integral cube 0 1 0.0001)

(define (simpson-rule f a b n)
  (define h (/ (- b a ) n))
  (define (factor x)
    ( cond
       ((= x 0) 1)
       ((= x n) 1)
       ((even? x) 2)
       (else 4)
       ))
  (define (simpson-term x)
    (define cur-factor (factor x))
    (display cur-factor)
    (newline)
    (* cur-factor (f (+ a  (* x h)))
       )
    )

  (* (sum simpson-term  0 inc n ) (/ h 3))
  )

; (simpson-rule cube 0 100000 8)

; (integral cube 0 100000 0.01)

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a ) (term a ) )
        )
    )
  (iter a 0)

  )
(define (sum-iter-integers a b)
  (sum-iter term a  inc b )
  )