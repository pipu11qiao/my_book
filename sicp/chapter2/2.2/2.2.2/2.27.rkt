#lang sicp

; (define (reverse items)
;   (define (reverse-inner items prev)
;     (if (null? items)
;         prev
;         (reverse-inner (cdr items) (cons (car items) prev))
;         )
;     )
;   (reverse-inner items  nil)
;   )
(define (deep-reverse items)
  (define (reverse-inner items prev)
    (cond
      ((null? items) prev)
      (else
       (let ((cur (car items)))
         (if(pair? cur)
            (reverse-inner (cdr items) (cons (reverse-inner cur nil) prev))
            (reverse-inner (cdr items) (cons cur prev))
            )
         )
       )
      )
    )
  (reverse-inner items  nil)
  )
(define x (list (list 1 2) (list 3 4)))

 (reverse x)
(deep-reverse x)
