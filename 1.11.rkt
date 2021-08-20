#lang scheme

(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3)))))))

(define (f n)
  (define (f-iter a b c n)
    (cond ((= n 2) c)
          ((= n 1) b)
          ((< n 1) a)
          (else (f-iter b
                        c
                        (+ c
                           (* 2 b)
                           (* 3 a))
                        (- n 1)))))
  (f-iter 0 1 2 n))