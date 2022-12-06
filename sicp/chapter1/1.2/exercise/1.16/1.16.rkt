#lang sicp
(define (square x) (* x x))
(define (expo b n)
  (define (expo-iter res b n)

    (cond ((= n 0) res)
          ((even? n) (expo-iter res (square b) (/ n 2) ))
          (else (expo-iter (* res b)  b  (- n 1) ) )
          )
    )

  (expo-iter 1  b n)
  )


(expo 2 5)