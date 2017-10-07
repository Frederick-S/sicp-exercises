#lang racket

(require rackunit "../../chapter01/1.3.rkt")

(check-equal? (sum-of-squares-of-two-larger-numbers 1 2 3) 13 "Should return 13")
(check-equal? (sum-of-squares-of-two-larger-numbers 2 3 1) 13 "Should return 13")
(check-equal? (sum-of-squares-of-two-larger-numbers 3 2 1) 13 "Should return 13")
(check-equal? (sum-of-squares-of-two-larger-numbers 2 1 3) 13 "Should return 13")