(load "p34-expmod.scm")

(define (congruent? a n)
  (= (expmod a n n) a))

(define (carmichael? n)
  (define (carmichael-iter n a)
    (cond ((= a n) #t)
          ((congruent? a n)
           (carmichael-iter n (+ a 1)))
          (else #f)))
  (carmichael-iter n 1))