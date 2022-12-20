#lang sicp

; (cons 1
;       (cons 2
;             (cons 3
;                   (cons 4 nil)
;                   )
;             )
;       )

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items)(- n 1))
      )
  )
; (define (length items)
;   (if (null? items)
;       0
;       (+ 1 (length (cdr items)))
;       )
;   )

(define (length items)
  (define (length-iter items len)
    (if (null? items)
        len
        (length (cdr items) (+ len 1))
        )
    )
  (length-iter items 0)
  )

(define (append list1 list2)
  (if (null? list1)
        list2
        (cons (car list1) (append (cdr list1) list2) )
      )
  )


(define squares (list 1 4 9 16 25))
(list-ref squares 3)
(length squares)