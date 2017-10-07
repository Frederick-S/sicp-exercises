#lang racket

(define (sum-of-squares a b)
    (+ (* a a) (* b b)))

(define (sum-of-squares-of-two-larger-numbers a b c)
    (if (>= a b) 
        (if (>= b c) (sum-of-squares a b) (sum-of-squares a c))
        (if (>= a c) (sum-of-squares a b) (sum-of-squares b c))))

(provide sum-of-squares-of-two-larger-numbers)