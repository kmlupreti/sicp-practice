; exercise 1.11
; write a function f defined as following using both recursive and iterative process
; 
; f => n                           if n<3
;     f(n-1)+2f(n-2)+3f(n-3)       if n>=3

; using recursive process is pretty much straight forward as it maps exactly to the given piece-wise function
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

; using iterative process is little bit tricky.
; we need values of f(n-1), f(n-2) and  f(n-3) so we need to
; find the values of function f from f(1) to f(n). 
; At each iteration the values of function is stored in the table
; with the corresponding index. 
; After the iteration is completed, value of f(n) can be found on table at nth index
; Following is the pseudocode of above mentioned process:
; for i = 1 to n
;  if n<3 then table[i]=i
; else
;  table[i] = tab[i-1] + 2 * tab[i-2] + 3 * tab[i-3] 
; end for
;f(n) = table[n]
;TODO: This process of tabulation the function values is also called memoization which
; comes in later chapter.I will implement this process after learning it later
