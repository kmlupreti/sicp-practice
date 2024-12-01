;import modules for necessary operations
(load "abs.scm")
(load "square.scm")

; function to check if square root is within given error margin
(define (is-good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001)) 

; function to recursively find square root until its good enough
(define (square-iter)(guess x)(
    (if (is-good-enough? guess x) guess (guess-iter guess x))
  ))

; entry point to find square root
(define (sqrt x)
  (square-iter 1.0 x)) ; Start with an initial guess of 1.0
