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

(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0) true)
          ((fermat-test n)
           (fast-prime? n (- times 1)))
          (else false)))

(define (runtime)
    (current-milliseconds))

(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (fast-prime? n 100000)
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

;; The average runtime of (search-for-primes 1000001) is about 120ms,
;; and the average runtime of (search-for-primes 1001) is about 76ms.
;; Since the Fermat test has O(logn) growth, thus the average runtime of (search-for-primes 1001) should be 120 / (log1000000 / log1000) = 60ms, which is close to 76ms.
