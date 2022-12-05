#lang sicp

(define (square x) (* x x))

(define (average x y )
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess prev-guess)
  (< (/(abs( - prev-guess guess )) guess) 0.1)
  )

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess x) guess x)
      )
  )
(define (sqrt x)
  (sqrt-iter 1.0 x x)
  )

(sqrt 9)

(sqrt(+ 1000000000000))
(sqrt(+ 0.0000))