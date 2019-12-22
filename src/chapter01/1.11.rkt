#lang racket

(define (f-recursive n)
    (if (< n 3)
        n
        (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))))

(define (f-iterative n)
    (f-iterative-internal 2 1 0 n))

(define (f-iterative-internal a b c count)
    (if (= count 0)
        c
        (f-iterative-internal (+ a (* 2 b) (* 3 c)) a b (- count 1))))

(provide f-recursive f-iterative)
