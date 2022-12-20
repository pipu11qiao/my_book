#lang sicp

(define (filter predicate sequence)
  (cond
    ((null? sequence) nil)
    ((predicate (car sequence))
     (cons (car sequence) (filter predicate (cdr sequence)))
     )
    (else (filter predicate (cdr sequence)))
    )
  )

; (filter odd? (list 1 2 3 4 5))


(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence) (accumulate op initial (cdr sequence)))
      )
  )

; (accumulate + 3 (list 1 2))

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))
      )
  )

(define (enumerate-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (list tree))
        (else (append (enumerate-tree (car tree))
                      (enumerate-tree (cdr tree))
                      ))
        )

  )

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


(#%provide (all-defined))