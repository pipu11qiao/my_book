#lang sicp
(define (recur-fun n)

  (define (fun n)
    (cond
      ((< n 3) n)
      (else (+
             (* 1 (fun (- n 1)))
             (* 2 (fun (- n 2)))
             (* 3 (fun (- n 3)))
             ) )
      )
    )
  (fun  n)
  )


(define (iter-fun n)
  (define (tmp n)
    (
     cond
      ((< n 3) n)
      (else (fun 2 1 0 (- n 1)) )
      )
    )

  (
   define (fun a b c count)
    (
     if(= count 0)
       b
       (
        fun
        (+ (* 1 a) ( * 2 b) (* 3 c))
        a
        b
        (- count 1)
        )

       )
    )
  (tmp n)
  )

(recur-fun 6);
(iter-fun 6);