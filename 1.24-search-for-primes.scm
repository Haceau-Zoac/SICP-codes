(load "1.22-search-for-primes.scm")
(load "p34-fast-prime.scm")

(define (prime? n)
  (fast-prime? n 10))