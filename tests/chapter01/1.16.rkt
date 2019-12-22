#lang racket

(require rackunit "../../src/chapter01/1.16.rkt")

(check-equal? (iterative-expt 1 0) 1 "Should return 1")
(check-equal? (iterative-expt 1 3) 1 "Should return 1")
(check-equal? (iterative-expt 2 3) 8 "Should return 8")
(check-equal? (iterative-expt 5 5) 3125 "Should return 3125")
(check-equal? (iterative-expt 2 10) 1024 "Should return 1024")
