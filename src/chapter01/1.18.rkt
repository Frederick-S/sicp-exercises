#lang racket

(define (multiply a b)
    (multiply-iterative a b 0))

(define (multiply-iterative a b product)
    (cond ((= b 0) product)
        ((even? b) (multiply-iterative (double a) (halve b) product))
        (else (multiply-iterative a (- b 1) (+ a product)))))

(define (even? n)
    (= (remainder n 2) 0))

(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(provide multiply)