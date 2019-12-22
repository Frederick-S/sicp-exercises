#lang racket

(define (smallest-divisor n)
    (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))))

(define (next n)
    (if (= n 2) 3 (+ n 2)))

(define (divides? a b)
    (= (remainder b a) 0))

(define (square n)
    (* n n))

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

(provide smallest-divisor)
(provide search-for-primes)

; The average runtime to find a prime of (search-for-primes 100000000000001) is about 77ms, 
; and the average runtime of the old search-for-primes is 151ms, which is almost half slower than the new function
