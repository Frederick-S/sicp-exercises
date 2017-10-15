#lang racket

(require rackunit "../../chapter01/1.12.rkt")

(check-equal? (pascal-triangle 1 1) 1 "Should return 1")
(check-equal? (pascal-triangle 2 1) 1 "Should return 1")
(check-equal? (pascal-triangle 3 2) 2 "Should return 2")
(check-equal? (pascal-triangle 5 3) 6 "Should return 6")