#lang sicp

;求b的n次方

(define (expo-base b n )
  (if (= n 0 )
      1
      (* b (expo-base b (- n 1)))
      )
  )
(expo-base 2 0)
(expo-base 2 3)
(expo-base 2 4)