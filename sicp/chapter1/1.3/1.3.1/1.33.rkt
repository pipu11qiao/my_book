#lang sicp
(#%require "../../util.rkt")

(define (accumulate combiner null-value term a next b filter)
  (if(> a b)
     null-value
     (if(filter a )
        (combiner (term a )  (accumulate combiner null-value term (next a ) next b))
        (accumulate combiner null-value term (next a ) next b)
        )
     )
  )
(define (accumulate-iter combiner null-value term a next b filter)
  (define (get-res x prev-res)
    (cond
      ((filter x)
       (combiner (term x) prev-res))
      (else prev-res)
      )
    )
  (define (iter a res)
    (if(> a b)
       res
       (iter   (next a ) (get-res a res) )
       )
    )
  (iter  a  null-value )
  )


; ( define (sum  term a  next b)
;    (define (add x y)(+ x y))
;    (accumulate add 0 term a next b)
;    )
; ( define (product  term a  next b)
;    (define (fact x y)(* x y))
;    (accumulate fact 1 term a next b)
;    )

; ;test
; (define (sum-integers a b)
;   (sum term a  inc b )
;   )

; (sum-integers 10 20)

; (define (factorial a b)
;   (product term a inc b)
;   )

; (factorial 1 3)

(define (sum-prime a b)
  (accumulate-iter add 0 identity a inc b prime?)
  )
; (add 2 3)
(sum-prime 2 5)