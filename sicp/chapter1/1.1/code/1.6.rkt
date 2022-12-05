#lang sicp

(define (square x) (* x x))

(define (average x y )
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(
 define (good-enough? guess x)
  (< (abs(-(square guess )x)) 0.001)
  )

(define (sqrt-iter-1 guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter-1 (improve guess x) x)
      )
  )
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)
          )
  )
(define (sqrt x)
  (sqrt-iter 1.0 x)
  )
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)
        )
  )
; (new-if (= 2 3) 0 5)
; (new-if (= 2 2) 0 5)
; (sqrt 9)
; (sqrt(+ 100 37)))
(define (p) (p))

;new-if是函数，和if条件表达式不一样的地方在于，函数是在调用时参数需要按值传递，被求值
(new-if (= 2 2) 0 (p))