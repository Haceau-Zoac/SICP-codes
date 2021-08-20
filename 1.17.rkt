#lang scheme

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

(define (fast* a b)
  (cond ((= b 0) 0)
        ((even? b)
         (double (fast* a
                        (halve b))))
        ((odd? b)
         (+ a (fast* a
                     (- b 1))))))
        