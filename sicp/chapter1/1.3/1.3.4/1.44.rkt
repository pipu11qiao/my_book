#lang sicp
(#%require "../../util.rkt")

(define (repeated f times)
  (lambda (x)
    (define (repeat-fun times)
      (if(= times 1)
         (f x)
         (f (repeat-fun (- times 1)))
         )
      )

    (repeat-fun times)
    )

  )
; ((repeated square 2) 5)

(define dx 0.5)

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3))
  )
(define (repeated-smooth  f n)
  (repeated (smooth f) n)
  )

; ((smooth cube) 1)

((repeated-smooth cube 2) 2)
