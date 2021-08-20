(load "p38-sum.scm")

(define (identity x) x)
(define (inc x) (+ x 1))

(define (sum-integers a b)
  (sum identity a inc b))