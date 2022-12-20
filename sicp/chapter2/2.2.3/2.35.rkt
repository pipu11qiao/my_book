#lang sicp
(#%require "./base.rkt")

(define (count-leaves t)
  (accumulate + 0
              (map (lambda (x) 1) t )
              )
)