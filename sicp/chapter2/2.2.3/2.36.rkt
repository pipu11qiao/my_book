#lang sicp
(#%require "./base.rkt")

(define (accumulate-n op init seqs)
  (define(car-n seqs)
    (map car seqs)
    )
  (define(cdr-n seqs)
    (map cdr seqs)
    )
  (if (null? (car seqs))
      nil
      (cons (accumulate op init (car-n seqs))
            (accumulate-n op init (cdr-n seqs))
            )
      ))

(define l1 (list 1 2 3))
(define l2 (list 4 5 6))
(define l3 (list 7 8 9))
(define l4 (list 10 11 12))

(define seq (list l1 l2 l3 l4))
; (define seq (list l1 ))



seq
; (car-n seq)
; (cdr-n seq)

(accumulate-n + 0 seq)