#lang sicp

(define (make-vect x y)
  (cons x y )
  )
(define (xcor-vect v)
  (car v)
  )
(define (ycor-vect v)
  (cdr v)
  )

(define (add-vect v1 v2)
  (make-vect
   (+ (xcor-vect v1) (xcor-vect v2))
   (+ (ycor-vect v1) (ycor-vect v2))
   )
  )

(define (sub-vect v1 v2)
  (make-vect
   (- (xcor-vect v1) (xcor-vect v2))
   (- (ycor-vect v1) (ycor-vect v2))
   )
  )
(define (scale-vect scale v)
  (make-vect
   (* scale (xcor-vect v))
   (* scale (ycor-vect v))
   )
  )

;make-segment start-segment end-segment
(define (make-segment v1 v2)
  (cons v1 v2)
)

(define (start-segment segment)
  (car segment)
)

(define (end-segment segment)
  (cdr segment)
)