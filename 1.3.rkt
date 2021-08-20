#lang racket

(define (square x)
  (* x x))

(define (bigger x y)
    (if (> x y)
        x
        y))

(define (biggest x y z)
    (bigger (bigger x y) z))

(define (middle x y z)
    (cond ((= (biggest x y z) x)
           (bigger y z))
          ((= (biggest x y z) y)
           (bigger x z))
          (else
           (bigger x y))))
          

(define (big-square-sum x y z)
  (+ (square (biggest x y z)) (square (middle x y z))))