#lang sicp
; (define list1 (list 1 3 (list 5 7) 9))

; (car (cdr (car (cdr (cdr list1)))))
; (define list1 (cons (cons 7 nil) nil))
; list1
; (car (car list1))

(define list1 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))
list1

; (car (cdr list1))

