#lang racket

(define (iterative-expt b n)
    (iterative-expt-internal 1 b n))

(define (iterative-expt-internal a b n)
    (cond ((= n 0) a)
        ((even? n) (iterative-expt-internal a (square b) (/ n 2)))
        (else (iterative-expt-internal (* a b) b (- n 1)))))

(define (even? n)
    (= (remainder n 2) 0))

(define (square n)
    (* n n))

(provide iterative-expt)