#lang sicp

(define (gcd a b)
  (if(= b 0)
     a
     (gcd b (remainder a b))
     )
  )
(define (make-rat n d)
  (let ((neg (negative? (* n d))))
    (let (
          (rel-n (abs n))
          (rel-d (abs d))
          )

      (let ((g (gcd rel-n rel-d)))
        (cons (/ (
                  if(negative?)
                    (* rel-n -1)
                    rel-n
                    ) g) (/ rel-d g))
        )
      )
    )
  )

( define (numer x)
   (car x)
   )
( define (denom x)
   (cdr x)
   )

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y)) (* (numer y) (denom x))) (* (denom x) (denom y)))
  )

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y)) (* (numer y) (denom x))) (* (denom x) (denom y)))
  )
(define (mul-rat x y)
  (make-rat (* (numer x) (numer y)) (* (denom x) (denom y)))
  )
(define (div-rat x y)
  (make-rat (* (numer x) (denom y)) (* (numer y) (denom x)))
  )
(define (equal-rat? x y)
  (=  (* (numer x) (denom y)) (* (numer y) (denom x)))
  )


; print
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x))
  )

(#%provide (all-defined))