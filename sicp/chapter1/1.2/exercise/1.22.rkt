
#lang sicp
;1. 写一个能产生下一个奇数的函数，用于生成连续奇数
;2. 写一个检查给定数字是否为素数的函数
;3. 写一个函数，给定它一个参数 n ，可以生成大于等于 n 的三个素数，或者更一般地，对于一个函数，给定它两个参数 n 和 count ，可以生成 count 个大于等于 n 的素数
;4. 测量寻找三个素数所需的时间

;1. 写一个能产生下一个奇数的函数，用于生成连续奇数
(define (next-odd n )
  (if(odd? n)
     (+ n 2)
     (+ n 1)
     )
  )

;2. 写一个检查给定数字是否为素数的函数
(define (prime? n )
  (define (square x) (* x x ))
  (define (devides? n test-divisor) (= (remainder n test-divisor) 0 ))
  (define (smallest-divisor n )
    (define (find-divisor n test-divisor)
      (
       cond
        ((> (square test-divisor) n ) n)
        ((devides? n test-divisor) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))
        )
      )
    (find-divisor n 2)
    )
  (=(smallest-divisor n) n)
  )

;3. 写一个函数，给定它一个参数 n ，可以生成大于等于 n 的三个素数，或者更一般地，对于一个函数，给定它两个参数 n 和 count ，可以生成 count 个大于等于 n 的素数
(define( continue-prime n count)
  (
   cond
    (( = count  0)
     (display "are primes.")
     )
    ((prime? n)
     (display n)
     (continue-prime (next-odd n) (- count 1))
     )
    (else (continue-prime (next-odd n) count ))
    )

  )
;4. 测量寻找三个素数所需的时间
(define (search-for-primes n )

  (define (test-time n start-time)
    (continue-prime n 3)
    (display " time is: ")
    (display (- (runtime) start-time))
    (newline)
    )
  (test-time n (runtime))
  )


; (continue-prime 100000 3)
(search-for-primes 1)
(search-for-primes 1000)
(search-for-primes 10000)
(search-for-primes 100000)
(search-for-primes 1000000)