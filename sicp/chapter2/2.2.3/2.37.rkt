#lang sicp
(#%require "./base.rkt")

(define (dot-product v w)
  (accumulate + 0 (map * v w))
  )

(define (matrix-*-vector m v)
  (map (lambda (w) (dot-product v w)) m)
  )

(define m (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))
(define v (list 1 2 3 4))

; (matrix-*-vector m v)

; (define (transpose mat)
;       (accumulate-n  cons '()  mat)
; )
(define (transpose m)
  (accumulate-n cons (list) m))

(transpose m)

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda (col-of-m)
           (map (lambda (col-of-cols)
                  (dot-product col-of-m
                               col-of-cols))
                cols))
         m))
  )