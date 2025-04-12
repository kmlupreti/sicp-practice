; our own new implementation of if-else statement using cond
(define (new-if predicate if-clause else-clause)
  (cond (predicate if-clause)
        (else then-clause)))
