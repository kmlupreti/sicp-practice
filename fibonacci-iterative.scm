; program to find nth item of fibonacci series using iterative method
; each number in fibonacci series is the sum of two previous numbers
; the series goes like this:
; 0,1,1,2,3,5,8,13....
; Here, fib(n) is the nth fibonacci number in this series
; we can see that fib(0)=0 and fib(1)=1. we can use this fact
; to setup base condition in our iteration process
; we use fib-iter process to iteratively calculate fibonacci number.
; we begin with a=0 b=1 and count=n
; at each iteration the values are updated as follow:
; a <- b
; b <- a+b
; count <- count-1
; after nth iteration, variable a contains fib(n)  

(define (fib-iter a b count)
  (if (= count 0)
      a
      (fib-iter b (+ a b) (- count 1))))

(define (fib n)
  (fib-iter 0 1 n))
