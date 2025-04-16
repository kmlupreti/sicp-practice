; exercise 1.9
; using substitution model we need to determine if given functions are
; iterative or recursive in evaluating (+ 4 5)
; Given methods are

; method 1
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; method 2
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; helper functions
(define (inc x) (+ x 1))
(define (dec x) (- x 1))

; in method 1, evaluating (+ 4 5)
; a = 4 and b=5
; a != 0 so it returns
;    (inc (+ (dec 4) 5))
; => (inc (inc (+ (dec 3) 5)))
; => (inc (inc (inc (+ (dec 2) 5))))
; => (inc (inc (inc (inc (+ (dec 1) 5)))))
; => (inc (inc (inc (inc 5))))
; => (inc (inc (inc 6)))
; => (inc (inc 7))
; => (inc 8)
; => (9)
;
; it grows during expansion of operands and then shrinks during evaluation.
; This is a recursive process.


; in method 2, evaluating (+ 4 5)
; a = 4 and b=5
; a != 0 so it returns
;   (+ (dec 4) (inc 5))
; =>(+ (dec 3) (inc 6))
; =>(+ (dec 2) (inc 7))
; =>(+ (dec 1) (inc 8))
; =>(+ (dec 0) (inc 9))
; =>(9)

; The shape of this process remains same during whole process and doesn't grow at all.
; This is a iterative process even though it has been defined as a recursive procedure.
