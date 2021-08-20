(load "p33-prime.scm")
(load "1.22-next-odd.scm")

(define (continue-primes n count)
  (cond ((< count 1)
         (display "are primes."))
        ((prime? n)
         (display n)
         (newline)
         (continue-primes (next-odd n) (- count 1)))
        (else
         (continue-primes (next-odd n) count))))