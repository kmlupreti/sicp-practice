; find summation of any function from a to b
; f is the function that is applied to each term
; next is the procedure that gives next term

(define (summation f a next b)
  (if (> a b)
      0
      (+ (f a)
         (summation f (next a) next b))))
