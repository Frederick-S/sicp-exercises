#lang racket

(define (even? n)
    (= (remainder n 2) 0))

(define (square n)
    (* n n))

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
           (remainder 
            (square (expmod base (/ exp 2) m))
            m))
          (else
           (remainder
            (* base (expmod base (- exp 1) m))
            m))))

(define (fermat-test n a)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it a))

(define (carmichael-test? n)
    (define (test? n a)
        (cond ((= 0 a) true)
            ((fermat-test n a) (test? n (- a 1)))
            (else false)))
    (test? n (- n 1)))

(provide carmichael-test?)
