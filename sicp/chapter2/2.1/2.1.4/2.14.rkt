#lang sicp
(#%require "./interval.rkt")

(define (par1 r1 r2)
  (div-interval
   (mul-interval r1 r2)
   (add-interval r1 r2)
   )
  )

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval one
                  (add-interval
                   (div-interval one r1)
                   (div-interval one r2)
                   ))
    )
  )

;test
(define i1 (make-interval 1.2 2.8))
(define i2 (make-interval 3.2 4.8))

(par1 i1 i2)
(par2 i1 i2)

