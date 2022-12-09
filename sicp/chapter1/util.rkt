#lang sicp

; 平方
(define (square x) (* x x))

; 立方
(define (cube x) (* x x x))

; 整除
(define (devides? n divisor) (= (remainder n divisor) 0 ))

; 加
(define (add x y) (+ x y))

; 恒等
(define (identity x) x)

;素数
(define (prime? n )
  (define (smallest-divisor n )
    (define (find-divisor n test-divisor)
      ( cond
         ((> (square test-divisor) n ) n)
         ((devides? n test-divisor) test-divisor)
         (else (find-divisor n (+ test-divisor 1)))
         )
      )
    (find-divisor n 2)
    )
  (=(smallest-divisor n) n)
  )

(#%provide (all-defined))