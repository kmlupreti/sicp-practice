; program to find exponential of the given number
; b is the base and n is the exponent such b^n is calculated
; it uses iterative method instead of recursive
(define (exp-iter b count)
  (if (= count 0)
      1
      (* b (exp-iter b (- count 1)))))

(define (exp b n)
  (exp-iter b n))
