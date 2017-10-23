#lang racket

(require rackunit "../../chapter01/1.17.rkt")

(check-equal? (* 1 1) 1 "Should return 1")
(check-equal? (* 2 3) 6 "Should return 6")
(check-equal? (* 3 5) 15 "Should return 15")
(check-equal? (* 3 27) 81 "Should return 81")