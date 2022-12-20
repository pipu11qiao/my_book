#lang sicp
(#%require "./point.rkt")
(#%require "./segment.rkt")

; 用两条垂直的线段表示矩形
(define (make-segment-rectangle s1 s2)
  (cons s1 s2)
  )
(define (x-side sr)
  (car sr)
  )
(define (y-side sr)
  (cdr sr)
  )
(define (x-side-length sr)
  (let ((side (x-side sr)))
    (-
     (x-point (end-segment side))
     (x-point (start-segment side))
     )
    )
  )

(define (y-side-length sr)
  (let ((side (y-side sr)))
    (-
     (y-point (end-segment side))
     (y-point (start-segment side))
     )
    )
  )


; 用对角线线段?
; 用对角的两个点

(define (make-point-rectangle p1 p2)
  (cons p1 p2)
  )
(define (start-point pr)
  (car pr)
  )
(define (end-point pr)
  (cdr pr)
  )
(define (horizontal-side-length pr)
  (-
   (x-point (end-point pr))
   (x-point (start-point pr))
   )
  )

(define (vertical-side-length pr)
  (-
   (y-point (end-point pr))
   (y-point (start-point pr))
   )
  )

(define (perimeter x-length y-length)
  (* (+ x-length y-length) 2)
  )

(define (area x-length y-length)
  (* x-length y-length)
  )

; ;test
; (define sr (make-segment-rectangle
;             (make-segment
;              (make-point 1 7) (make-point 10 7))
;             (make-segment
;              (make-point 1 1) (make-point 1 7))
;             ))


; ; (display (x-side-length sr))
; ; (display (y-side-length sr))
; (display "perimeter is: ")
; (display (perimeter
;           (x-side-length sr)
;           (y-side-length sr)
;           ))
; (newline)
; (display "area is: ")
; (display (area
;           (x-side-length sr)
;           (y-side-length sr)
;           ))
; (newline)


;test
(define pr (make-segment-rectangle
            (make-point 1 1) (make-point 10 7)
            )
  )


; (display (x-side-length sr))
; (display (y-side-length sr))
(display "perimeter is: ")
(display (perimeter
          (horizontal-side-length pr)
          (vertical-side-length pr)
          ))
(newline)
(display "area is: ")
(display (area
          (horizontal-side-length pr)
          (vertical-side-length pr)
          ))
(newline)

(#%provide (all-defined))