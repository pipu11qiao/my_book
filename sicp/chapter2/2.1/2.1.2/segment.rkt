#lang sicp
(#%require "./point.rkt")


(define (make-segment p1 p2)
  (cons p1 p2)
  )
( define (start-segment s)
   (car s)
   )
( define (end-segment s)
   (cdr s)
   )
(define (midpoint-segment s)
  (let (
        (s-s (start-segment s))
        (e-s (end-segment s))
        )

    (make-point
     (/ (+(x-point s-s)(x-point e-s))2)
     (/ (+(y-point s-s)(y-point e-s))2)
     )
    )
  )


(#%provide (all-defined))