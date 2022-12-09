#lang sicp
(#%require "../../util.rkt")

(define (f g) (g 2))

; (f square)

; (f (lambda (x)
;      (* x (+ x 1))
;      ))

(f f)