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

; The alternative strategy
(define (new-sqrt x)
    (new-sqrt-iter 1.0 x))

(define (new-sqrt-iter guess x)
    (let ([next-guess (improve guess x)])
        (if (new-good-enough? guess next-guess)
            guess
            (new-sqrt-iter next-guess x))))

(define (new-good-enough? guess next-guess)
    (< (abs (- guess next-guess)) (* 1.0e-10 guess)))

(provide sqrt good-enough? new-sqrt new-good-enough? improve)