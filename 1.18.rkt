#lang scheme

(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (fast* a b)
  (cond ((= b 0) 0)
        ((even? b)
         (double (fast* a
                        (halve b))))
        ((odd? b)
         (+ a (fast* a
                     (- b 1))))))

(define (multi a b)
  (define (multi-iter a b product)
    (cond ((= b 0)
           product)
          ((even? b)
           (multi-iter (double a)
                       (halve b)
                       product))
          ((odd? b)
           (multi-iter a
                       (- b 1)
                       (+ a product)))))
  (multi-iter a b 0))