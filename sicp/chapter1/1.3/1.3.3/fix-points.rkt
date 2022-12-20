#lang sicp
(#%require "../../util.rkt")

(define tolerance 0.00001)


(define (fixed-point f first-guess)
  (define (close-enough? x y)
    (<(abs (- x y)) tolerance)
    )
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next)
          )
      )
    )
  (try first-guess)
  )
; (fixed-point cos 1.0)
; (fixed-point (lambda (y) (+ (sin y) (cos y))) 1.0)
; (define (sqrt x)
;   (fixed-point (lambda (y)(average y (/ x y)) )
;                1.0
;                )
;   )

; (sqrt 4)
; (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0);
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0);
(display "------")
(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0);
