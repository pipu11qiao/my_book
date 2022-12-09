#lang sicp
(#%require "../../util.rkt")

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
      (if(close-enouth? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value) 
            (search f)
          ))
        )
      )
    )
  )