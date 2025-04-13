; function to find square root of a given number using newton's method.
; It takes a initial guess and checks if its good enough guess and
; improves it if its not. The guess is improved by averaging current
; guess and n/guess where n is the radicand whose square root is to be
; calculated .This  process continues until the guess is within specified
; error margin.In this case, initial guess is 1.0 and error margin is 0.001
; It contains some helper functions that are private to this program
; and connot be accessed from outside. 
(define (sqrt n)

 ; function to find average of two numbers
(define (average x y)
  (/ (+ x y) 2))

; function to improve the guess
(define (improve guess n)
  (average guess (/ n guess)))

; function to check if square root is within given error margin
(define (is-good-enough? guess n)
  (< (abs (- (square guess) n)) 0.001))

; function to recursively find square root until its good enough
(define (square-iter guess n)
    (if (is-good-enough? guess n)
        guess
        (square-iter (improve guess n) n)))

; Start with an initial guess of 1.0
(square-iter 1.0 n)) 
