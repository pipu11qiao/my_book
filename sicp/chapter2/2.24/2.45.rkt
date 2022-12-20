#lang sicp

(define (right-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split painter (- n 1))))
        (beside painter (below smaller smalller))
        )
      )
  )

(define (up-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split painter (- n 1))))
        (beow painter (beside smaller smalller))
        )
      )
  )

(define (split action1 action2)
  (define  (fun painter n )
    (if (= n 0)
        painter
        (let ((smaller (fun painter (- n 1))))
          (action1 painter (action2 smaller smalller))
          )
        )
  )
  fun
)