#lang racket

(define (square x)
  (* x x))

(define (cube x)
  (* x x x)) 

(define (good-enough? old new)
  (> 0.01
     (/ (abs (- new old))
        old)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve y x)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (cube-root-iter guess x)
  (let ((new (improve guess x)))
    (if (good-enough? guess new)
        new
        (cube-root-iter new x))))

(define (cube-root x)
  (cube-root-iter 1.0 x))