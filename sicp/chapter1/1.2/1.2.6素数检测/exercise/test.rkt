#lang sicp

(
 define (fun n)
  (cond
    ((> n 2)
     (display "3")
     (display "4")
     (newline)
     3
     )
    (else
     (display "5")
     (newline)
     5
     )
    )

  )
(fun 1)