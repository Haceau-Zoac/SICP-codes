(load "1.23-next.scm")
(load "p8-square.scm")
(load "p33-divides.scm")

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else
         (find-divisor n (next test-divisor)))))