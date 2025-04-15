; find the factorial of a number using iterative process. It may look like
; recursive method but its actually a iterative method,
; In recursive method, the interpreter had to keep track of
; increasing number of operations at each cycle as it first needs to
; fully expand the operands before performing any operations
; but in iterative process it only needs to keep track of few fixed variables and the
; operands are evaluated in each cycle. 
; In this process, we find the product of numbers from 1 to n.
; count is incremented by 1 and product aggregates the product of values of n at each interation

(define (fact n)
(define (fact-iter count product) ;use block structure to hide fact-iter from outside 
  (if (> count n)
      product
      (fact-iter (+ count 1) (* product count))))
  (fact-iter 1 1))
