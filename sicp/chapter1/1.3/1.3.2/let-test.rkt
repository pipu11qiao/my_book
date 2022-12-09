#lang sicp
(#%require "../../util.rkt")

(define (add-fun a b)
  (let(
       (x (+ a b))
       (y (- a b))
       )
    (+ x  y)
    )
  )

; (add-fun 1 2)

(define (fun x y)
  (let (
        (a (+ (* x y ) 1))
        (b (- 1 y))
        )
    (
     +
     (* x (square a))
     ( * y b)
     ( * a b)
     )
    )
  )

(fun 1 2)