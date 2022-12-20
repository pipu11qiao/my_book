#lang sicp
(define (segments->painter segment-list)
  (lambda (frame)
    (for-each 
      (lambda (segment)
        (draw-line
          ((frame-coord-map frame) (start-segment segment))
          ((frame-coord-map frame) (end-segment segment))
        )
      )
    )
  )
)

;1
(segments->painter (list 
  (make-segment (make-vect 0 0) (make-vect 0 1))
  (make-segment (make-vect 0 0) (make-vect 1 0))
  (make-segment (make-vect 1 0) (make-vect 1 1))
  (make-segment (make-vect 0 1) (make-vect 1 1))
))
;2
(segments->painter (list 
  (make-segment (make-vect 0 0) (make-vect 1 1))
  (make-segment (make-vect 0 1) (make-vect 1 0))
))