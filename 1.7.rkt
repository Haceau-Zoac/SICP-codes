#lang racket

; 参考 https://sicp.readthedocs.io/en/latest/chp1/7.html

(define (square x)
  (* x x))

(define (good-enough? old new)
  (> 0.01
     (/ (abs (- new old))
        old)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (let ((new (improve guess x)))
    (if (good-enough? guess new)
        new
        (sqrt-iter new x))))

(define (sqrt x)
  (sqrt-iter 1.0 x))