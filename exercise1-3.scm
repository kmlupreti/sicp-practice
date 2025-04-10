;load file where sum-of-squares helper function is located
(load "sum-of-squares.scm")
; function that takes three numbers and returns sum of squares of two largest numbers
; in this function the least number is checked instead of finding largest two numbers as it is easier
(define (f a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares  b c))
        ((and (< b a) (< b c)) (sum-of-squares  a c))
        (else (sum-of-squares  a b))))
