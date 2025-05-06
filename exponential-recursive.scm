; program to find exponential of the given number
; b is the base and n is the exponent such b^n is calculated
; It uses linear recursive method such that b^n => b.b^(n-1) => b.b.b^(n-2) and so on until n=0
; in which case b^0 = 1

(define (exp b n)
  (if (= n 0)
      1
      (* b (exp b (- n 1)))))
