#lang racket

(require rackunit "../../src/chapter01/1.19.rkt")

(check-equal? (fib 1) 1 "Should return 1")
(check-equal? (fib 3) 2 "Should return 2")
(check-equal? (fib 4) 3 "Should return 3")
(check-equal? (fib 5) 5 "Should return 5")
(check-equal? (fib 6) 8 "Should return 8")