; implementation of factorial function using recursion. 
; Factorial of number n is denoted as n! and its the product of its
; factors. for eg. the factorial of 12 is 12! = 12*6*3*2*1
; Recursion means that a function is defined in terms of itself i.e
; a function calls itself during its execution.
; In order to break from the recursion we need a base condition which
; prevents us from infinite recursion. In this case the base condition is that
; factorial of 1 is 1.So here the recursion fuction returns 1 is n is one otherwise it
; returns factorial of n as n*(n-1)!. This process repeats until n is 1.

(define (fact n)
  (if (= n 1)
      1
      (* n (fact (- n 1)))))
