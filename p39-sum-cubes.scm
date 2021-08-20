(load "p37-cube.scm")
(load "p38-sum.scm")

(define (inc n) (+ n 1))
(define (sum-cubes a b)
  (sum cube a inc b))