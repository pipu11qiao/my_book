#lang sicp
(#%require "./base.rkt")


(define (fold-left op initial sequence)
  (define (iter  result seq)
    (if (null? seq)
        result
        ( iter (op result (car seq))  (cdr seq))
        )
    )
  (iter initial sequence)
  )

; (fold-left / 1 (list 1 2 3))
; (accumulate / 1 (list 1 2 3))


; (fold-left list nil (list 1 2 3))
; (accumulate list nil (list 1 2 3))

(define l1 (list 1 2 3 4))


(define (reverse sequence)
  (fold-left (lambda (x y) 
    (cons  y x) ) nil sequence)
)
(reverse l1)