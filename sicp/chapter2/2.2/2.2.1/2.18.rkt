#lang sicp
(define (reverse items)
  (define (reverse-inner items prev)
    (if (null? items)
        prev
        (reverse-inner (cdr items) (cons (car items) prev))
        )
    )
  (reverse-inner items  nil)
  )

; (reverse (list 23 72 149 34))
; (reverse (list 23 72 149 34 55))
(reverse (list ))