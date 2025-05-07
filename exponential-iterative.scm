; program to find exponential of the given number
; b is the base and n is the exponent such b^n is calculated
; it uses iterative method instead of recursive

(define (exp b n)
  (define (exp-iter count product)
    (if (= count 0)
        product
        (exp-iter (- count 1) (* product b))))
  (exp-iter n 1))
