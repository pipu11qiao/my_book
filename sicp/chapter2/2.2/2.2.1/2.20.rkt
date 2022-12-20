#lang sicp
; (define (f x y . z)
;   (display x)
;   (display y)
;   (display z)
; )

; (f 1 2 3 4 5 6)


; (define (same-parity . param)
;   (display param)
;   (define (get-parity items is-odd)
;     (cond
;       ((null? items) nil)
;       (else
;        (let ((item (car items)))
;          (if((=(odd? item) is-odd))
;             (cons item (get-parity (cdr items) is-odd))
;             (get-parity (cdr items) is-odd)
;             )
;          )
;        )
;       )

;     )
;   (let ((is-odd (odd? (car param))))
;     (cons (car param) (get-parity (cdr param) is-odd))
;     )
;   )

; (same-parity 1 2 3 4 5 6 7)

(define (get-parity items first)
  (cond
    ((null? items) nil)
    (else
     (let ((item (car items)))
        (if (= (remainder item 2) (remainder first 2))
           (cons item (get-parity (cdr items) first))
           (get-parity (cdr items) first)
           )
       )
     )
    )

  )
(get-parity (list 1 2 3 4 5 6 7) 2)
