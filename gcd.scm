; finding greatest common divisor(gcd) using euler's algorithm.
; its based on the fact g(a,b) = gcd(b,r) where r is remainder of a/b
; in this process the pair is reduced until second number is 0.

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
