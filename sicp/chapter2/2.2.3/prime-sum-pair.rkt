#lang sicp
(#%require "../util.rkt")
(#%require "./base.rkt")

; (accumulate append nil (map
;                         (lambda (i)
;                           (map (lambda (j) (list i j)) (enumerate-interval 1 (- i 1)))
;                           )
;                         (enumerate-interval 1 n)
;                         ))

(define (flatmap proc seq)
  (accumulate append nil (map proc seq))
  )

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair)))
  )

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair)))
  )
(define (unique-pair n)
  (flatmap  (lambda (i) (
                         map (lambda (j) (list i j))
                             (enumerate-interval 1 (- i 1))
                             ))
            (enumerate-interval 1 n)
            )

  )

(define (prime-sum-pair n)
  (map make-pair-sum ( filter prime-sum? (unique-pair n)))
  )


; (prime-sum-pair 6)

; (filter prime-sum?

;         (flatmap  (lambda (i) ( map (lambda (j) (list i j)) (enumerate-interval 1 (- i 1)))) (enumerate-interval 1 6))
;         )
(#%provide (all-defined))