(load "p33-smallest-divisor.scm")

(define (prime? n)
  (= n (smallest-divisor n)))