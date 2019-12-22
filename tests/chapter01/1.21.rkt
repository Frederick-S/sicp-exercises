#lang racket

(require rackunit "../../src/chapter01/1.21.rkt")

(check-equal? (smallest-divisor 199) 199 "Should return 199")
(check-equal? (smallest-divisor 1999) 1999 "Should return 1999")
(check-equal? (smallest-divisor 19999) 7 "Should return 7")
