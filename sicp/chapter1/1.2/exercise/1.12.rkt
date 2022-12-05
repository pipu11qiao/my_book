#lang sicp
(define (ele row column)
  (
   if(or (= column 1) (= column row))
     1
     (+
      (ele (- row 1) (- column 1))
      (ele (- row 1) column)
      )
     )
  )

(ele 6 1);
(ele 6 2);
(ele 6 3);
(ele 6 4);
(ele 6 5);
(ele 6 6);