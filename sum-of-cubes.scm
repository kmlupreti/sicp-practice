; finding sum of cubes using summation method

; load summation method
(load "summation.scm")

; method to get next item
(define (next a)
  (+ a 1))

; nth term function applied to each term i.e cube function in this case
(define (cube a)
  (* a a a)) 

; find sum of cubes from a to b
(define (sum-of-cubes a b)
  (summation cube a next b))
