#lang sicp
(define (gcd a b)
  (if(= b 0)
     a
     (gcd b (remainder a b))
     )
  )
(gcd 4 2);2
(gcd 16 28);4
(gcd 45 105);15
(gcd 5 3);1