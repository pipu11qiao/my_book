#lang sicp

(define (make-mobile left right)
  (list left right)
  )

(define (make-branch length structure)
  (list length structure)
  )

(define (left-branch mobile)
  (car mobile)
  )
(define (right-branch mobile)
  (car (cdr mobile))
  )

(define (branch-length branch)
  (car branch)
  )
(define (branch-structure branch)
  (car(cdr branch))
  )

(define b21 (make-branch 21 22))
(define b22 (make-branch 23 24))
(define m1 (make-mobile b21 b22))

(define b31 (make-branch 31 32))
(define b32 (make-branch 33 34))
(define m2 (make-mobile b31 b32))

(define b3 (make-branch 12 m1))
(define b4 (make-branch 13 m2))

(define m3 (make-mobile b3 b4))
; m3

; (define left (left-branch m3))
; left
; (define right (right-branch m3))
; right

; (define l1 (branch-length left))
; l1
; (define s1 (branch-structure left))
; s1

; (define (total-weight mobile)
;   (define (total-branch branch)
;     (let ((w (branch-structure branch)))
;       (if(pair? w)
;          (total-weight w)
;          w
;          )
;       )
;     )
;   (+ (total-branch (left-branch mobile)) (total-branch (right-branch mobile)))
;   )
; (total-weight m3)


(define (check-balance mobile)
  (define (total-weight mobile)
    (define (total-branch branch)
      (let ((w (branch-structure branch)))
        (if(pair? w)
           (total-weight w)
           (cons w true)
           )
        )
      )
    (let ((l (left-branch mobile))
          (r (right-branch mobile))
          )
      (let ((l-res (total-branch l))
            (r-res (total-branch r))
            )
        (cons (+ (car l-res) (car r-res)) (and (cdr l-res) (cdr r-res) (= (* (branch-length l) (car l-res) ) (* (branch-length r) (car r-res)))))
        )
      )
    )
  (let ((res (total-weight mobile)))
    (display res)
    (cdr res )
    )
  )

(check-balance m3)