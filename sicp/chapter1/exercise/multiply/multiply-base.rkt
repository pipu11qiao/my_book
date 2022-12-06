#lang sicp
;求a*b
(define (mul-base a b )
  (if (= b 0)
      0
      (+ a (mul-base a (- b 1)))
      )
  )
(mul-base 2 0)
(mul-base 0 3)
(mul-base 2 3)
(mul-base 5 3)