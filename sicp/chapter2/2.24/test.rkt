#lang sicp

(define (get-fun)
  (define (fun a b) (+ a b))
  fun
)

(define sum (get-fun))


(sum 1 3)