(load "1.22-continue-primes.scm")

(define (search-for-primes n)
  (let ((start-time (runtime)))
    (continue-primes n 3)
    (- (runtime) start-time)))