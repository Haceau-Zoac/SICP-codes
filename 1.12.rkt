#lang scheme

(define (pascal-rec r l)
  (cond ((or (= r 0) (= l 0)) 1)
        (else (+ (pascal (- r 1) l)
                 (pascal r (- l 1))))))