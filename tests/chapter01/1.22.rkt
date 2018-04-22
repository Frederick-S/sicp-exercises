#lang racket

(require rackunit "../../src/chapter01/1.22.rkt")

(check-equal? (search-for-primes 1001) (list 1009 1013 1019) "Should return 199")