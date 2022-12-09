#lang sicp
; (define  (factorial a b)
;   (if(> a b)
;      1
;      (* a (factorial (+ a 1) b))
;      )
;   )
; 给定范围中给点的某个函数值的乘积
(define (product term a next b)
  (if(> a b)
     1
     (* (term a )  (product term (next a ) next b))
     )
  )

(define (product-iter term a next b)
  (define (iter a res)
    (if(> a b)
       res
       (iter  (next a ) (* res (term a )))
       )
    )
  (iter a 1)
  )

(define (term x) x)
(define (inc x) (+ x 1))
(define (factorial a b)
  (product term a inc b)
  )
(define (factorial-iter a b)
  (product-iter term a inc b)
  )

(factorial 1 3)
(factorial-iter 1 3)

; (define (pi-fact a b)

;   (define (term x)
;     (if(even? x)
;        (/ x (+ x  1))
;        (/ (+ x 1) x)
;        )
;     )
;   (product term a inc b)
;   )
; (pi-fact 2 8)


