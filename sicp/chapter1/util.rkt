#lang sicp

; 平方
(define (square x) (* x x))
; 立方
(define (cube x) (* x x x))
; 整除
(define (devides? n divisor) (= (remainder n divisor) 0 ))

(#%provide (all-defined))