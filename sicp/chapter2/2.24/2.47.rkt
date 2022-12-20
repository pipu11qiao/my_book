#lang sicp

; make-frame origin-frame edge1-frame edge2-frame

; (define (make-frame origin edge1 edge2)
;   (list origin edge1 edge2)
; )
; (define (origin-frame frame)
;   (car frame)
; )
; (define (edge1-frame frame)
;   (cadr frame)
; )
; (define (edge2-frame frame)
;   (cadr (cdr frame))
; )

; (define f1 (make-frame 1 2 3))

; (origin-frame f1)
; (edge1-frame f1)
; (edge2-frame f1)


(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2))
  )
(define (origin-frame frame)
  (car frame)
  )
(define (edge1-frame frame)
  (cadr frame)
  )
(define (edge2-frame frame)
  (cdr (cdr frame))
  )

(define f1 (make-frame 1 2 3))

(origin-frame f1)
(edge1-frame f1)
(edge2-frame f1)
