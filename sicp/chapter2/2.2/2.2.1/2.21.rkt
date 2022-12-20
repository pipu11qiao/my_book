#lang sicp
(#%require "../../util.rkt")
(#%require "./map.rkt")

; (define (square-list items)
;   (if (null? items)
;     nil
;     (cons (square (car items)) (square-list (cdr items)))
;   )
; )
(define (square-list items)
  (map (lambda (x) (square x)) items)
  )

(square-list (list 1 2 3 4))