#lang sicp

(define (make-interval a b)
  (cons (min a b) (max a b))
  )
(define (lowerbound i)
  (car i)
  )
(define (upperbound i)
  (cdr i)
  )

(define (add-interval x y)
  (make-interval
   (+ (lowerbound x) (lowerbound y))
   (+ (upperbound x) (upperbound y))
   )
  )
(define (sub-interval x y)
  (make-interval
   (- (lowerbound x) (upperbound y))
   (- (upperbound x) (lowerbound y))
   )
  )

(define (mul-interval x y)
  (if( and (< (lowerbound y) 0) (>  (upperbound y) 0))
     (error "cross 0")
     (let (
           (p1 (* (lowerbound x)(lowerbound y)))
           (p2 (* (lowerbound x)(upperbound y)))
           (p3 (* (upperbound x)(lowerbound y)))
           (p4 (* (upperbound x)(upperbound y)))
           )
       (make-interval
        (min p1 p2 p3 p4)
        (max p1 p2 p3 p4)
        )
       )
     )
  )
(define (div-interval x y)
  (mul-interval x (make-interval
                   (/ 1.0 (upperbound y))
                   (/ 1.0 (lowerbound y))
                   ))
  )

; print
(define (print-interval i)
  (newline)
  (display "[")
  (display (lowerbound i))
  (display ",")
  (display (upperbound i))
  (display "]")
  )

(#%provide (all-defined))