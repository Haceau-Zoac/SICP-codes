(load "1.28-nontrivial-square-root.scm")
(load "p8-square.scm")

(define (expmod base exp m)
  (cond ((= exp 0)
         1)
        ((nontrivial-square-root? base m)
         0)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))