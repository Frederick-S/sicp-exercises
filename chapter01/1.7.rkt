#lang racket

; If the number is too small, the predetermined tolerance might be too large.
; So the good-enough? test might ends before we find a accurate answer.
; For example, (sqrt 1.0e-10) returns 0.03125000106562499 while the accurate answer is 1.0e-5.
; If the number is too large, it's possible that the good-enough? test will never be true.
; For example, (sqrt 1.23456789e47).

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (square x)
    (* x x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(provide sqrt good-enough?)