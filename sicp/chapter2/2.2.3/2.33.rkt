#lang sicp
(#%require "./base.rkt")

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y) ) nil sequence)
  )

(define l1 (list 1 2 3 4 7 9))
(define l2 (list 2 5 6 8))

(map (lambda (x) (* x x)) l1)

(define (append seq1 seq2)
  (accumulate cons seq2 seq1)
  )



(define (length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence)
  )


(length  l1)
(length (append l1 l2))