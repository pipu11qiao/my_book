#lang sicp

; (define (expo b n)
;   (if (= n 0)
;       1
;       (* b( expo b (- n 1 )))
;       )
;   )
; (define (expo b n) (expo-iter 1 n b))
; (define (expo-iter res count b)
;   (if(=  count 0)
;      res
;      (expo-iter (* res b) (- count 1) b)
;      )
;   )
(define (square x) (* x x))
(define (expo b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expo b (/ n 2) )))
        (else (* b (expo b (- n 1))))
        )
  )


(expo 2 3)