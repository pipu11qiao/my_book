

#lang sicp

(define (flipped-pairs painter)
  (let ((painter2 (beside painter (flip-vert painter)))))
  (below painter2 painter2)
  )

(define wave4 (flipped-pairs wave))



(define (right-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split painter (- n 1))))
        (beside painter (below smaller smalller))
        )
      )
  )

(define (corner-split painter n)
  (if (= n 0)
      painter
      (let (
            (up (up-split painter (-n 1)))
            (right (right-split painter (-n 1)))
            )
        (let ((top-left (beside up up ))
              (bottom-right (below right right))
              (corner (corner-split painter (- n 1)))
              )
          (beside (below painter top-left) (below bottom-right corner))
          )

        )

      )
  )

(define (square-of-four tl tr bl br)
  (lambda (painter)
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (br painter)))
          )
      (below bottom top)
      )
    )
  )


(define (flipped-pairs painter)
  (let ((combine4 (square-of-four identity flip-vert identity flip-vert)))
    (combine4 painter)
    )
  )

(define (frame-coord-map frame)
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect
      (scale-vect (xcor-vect v)
                  (edgel-frame frame)
                  )
      (scale-vect (ycor-vect v)
                  (edge2-frame frame)
                  )

      )
     )
    )
  )

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

(define (transform-painter painter origin corner1 corner2)
  (lambda (frame)
    (let ((m (frame-coord-map frame)))
      (let ((new-origin (m origint)))
        (painter
         (make-frame new-origin
          (sub-vect (m corner1) new-origitn)
          (sub-vect (m corner2) new-origitn)
          )
         )
        )
      )
    )
  )

(define (flip-vert painter)
  (transform-painter painter)
        (make-vect 0.0 1.0)
        (make-vect 1.0 1.0)
        (make-vect 0.0 0.0)
)

(define (shrik-to-upper-right painter)
  (transform-painter painter
    (make-vect 0.5 0.5)
    (make-vect 1.0 0.5)
    (make-vect 0.5 1.0)
  )
)
(define (rotate 90 painter)
  (transform-painter painter
    (make-vect 0.5 0.5)
    (make-vect 1.0 0.5)
    (make-vect 0.5 1.0)
  )
)

(define (squash-inwards painter)
  (transform-painter painter 
    (make-vect 0.0 0.0)
    (make 0.65 0.35)
    (make 0.35 0.65)
  )
)


(define (beside painter1 painter2)
  (let ((split-point (make-vect 0.5 0.0)))
    
  )
)