#lang racket

(require rackunit "./1.21.rkt")

(define (prime? n)
    (= n (smallest-divisor n)))

(define (runtime)
    (current-milliseconds))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n)
        (begin
            (report-prime (- (runtime) start-time))
            true)
        false))

(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))

(define (search-for-primes-by-count n count)
    (if (not (equal? count 0))
        (if (timed-prime-test n)
            (append (list n) (search-for-primes-by-count (+ n 2) (- count 1)))
            (search-for-primes-by-count (+ n 2) count))
        (list)))

(define (search-for-primes n)
    (search-for-primes-by-count n 3))

(provide search-for-primes)
