; recursive method to find nth fibonacci number
; It is a type of tree recursion as the process looks like a tree
; where the branches split into two sub-branches at each level.
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1) (- n 2))))
      ))
