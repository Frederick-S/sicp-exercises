#lang racket

(require rackunit "../../src/chapter01/1.18.rkt")

(check-equal? (multiply 1 0) 0 "Should return 0")
(check-equal? (multiply 0 1) 0 "Should return 0")
(check-equal? (multiply 1 1) 1 "Should return 1")
(check-equal? (multiply 2 3) 6 "Should return 6")
(check-equal? (multiply 3 5) 15 "Should return 15")
(check-equal? (multiply 3 27) 81 "Should return 81")