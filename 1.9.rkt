#lang racket

(define (inc a)
  (+ a 1))

(define (dec a)
  (- a 1))

(define (add-1 a b)
  (if (= a 0)
      b
      (inc (add-1 (dec a) b))))

; (+ 4 6)
; (inc (+ 3 6))
; (inc (inc (+ 2 6)))
; (inc (inc (inc (+ 1 6))))
; (inc (inc (inc (inc (+ 0 6)))))
; (inc (inc (inc (inc 6))))
; (inc (inc (inc 7)))
; (inc (inc 8))
; (inc 9)
; 10

(define (add-2 a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
; (+ 4 6)
; (+ 3 7)
; (+ 2 8)
; (+ 1 9)
; (+ 0 10)
; 10