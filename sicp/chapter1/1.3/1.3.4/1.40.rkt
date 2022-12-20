#lang sicp
(#%require "../../util.rkt")

(define dx 0.00001)
(define (deriv g)
  (lambda (x)
    (/ (-(g(+ x dx)) (g x))
       dx
       )
    )
  )

; ((deriv cube) 5)

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))
    )
  )

(define (newton-method g guess)
  (fixed-point (newton-transform g) guess)
  )

; (define (sqrt x)
;   (newton-method (lambda (y) (- (square y) x)) 1.0)
; )

; (sqrt 4)


(define (cubic a b c)(
                      (lambda ( x)
                        (+(cube x) (* a (square x)) (* b x) c))
                      )
  )
(define (fun1 a b c)
  (newton-method (cubic a b c) 1.0)
  )