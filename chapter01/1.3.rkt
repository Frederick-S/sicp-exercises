#lang racket

(define (sum-of-squares a b)
    (+ (* a a) (* b b)))

(define (sum-of-two-larger-numbers a b c)
    (if (>= a b) 
        (if (>= b c) (sum-of-squares a b) (sum-of-squares a c))
        (if (>= a c) (sum-of-squares a b) (sum-of-squares b c))))

(sum-of-two-larger-numbers 3 2 1)