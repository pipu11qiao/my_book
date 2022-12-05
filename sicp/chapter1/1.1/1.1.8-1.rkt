#lang sicp
;词法作用域
(define (sqrt x)

  (define (average x y )
    (/ (+ x y) 2))
  (define (good-enough? guess)
    (< (abs(-(square guess )x)) 0.001)
    )

  (define (improve guess)
    (average guess (/ x guess)))
  (define (square x) (* x x))


  (define (sqrt-iter guess )
    (if (good-enough? guess )
        guess
        (sqrt-iter (improve guess ) )
        )
    )
  (sqrt-iter 1.0 )
  )

(sqrt 9)

(sqrt(+ 1000000000000))
(sqrt(+ 0.00003))