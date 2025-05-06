; exercise 1.15 (page 56)
; The given program is
(define (cube x) (* x x x))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (- (* 3 (sine (/ angle 3.0)))
         (* 4 (cube (sine (/ angle 3.0)))))))
