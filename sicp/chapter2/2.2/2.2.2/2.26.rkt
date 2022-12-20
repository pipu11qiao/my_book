#lang sicp

(define x (list 1 2 3))
(define y (list 4 5 6))

(define l1 (cons x y))
(define l2 (list x y))

l1
l2
(cdr l1)
(car (cdr l2))