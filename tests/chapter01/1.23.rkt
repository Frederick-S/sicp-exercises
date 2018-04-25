#lang racket

(require rackunit "../../src/chapter01/1.23.rkt")

(check-equal? (smallest-divisor 199) 199 "Should return 199")
(check-equal? (smallest-divisor 1999) 1999 "Should return 1999")
(check-equal? (smallest-divisor 19999) 7 "Should return 7")
(check-equal? (search-for-primes 1001) (list 1009 1013 1019) "Should return '(1009 1013 1019)")
(check-equal? (search-for-primes 10001) (list 10007 10009 10037) "Should return '(10007 10009 10037)")
(check-equal? (search-for-primes 100001) (list 100003 100019 100043) "Should return '(100003 100019 100043)")