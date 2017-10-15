#lang racket

(require rackunit "../../chapter01/1.12.rkt")

(check-equal? (pascal-triangle-element 1 1) 1 "Should return 1")
(check-equal? (pascal-triangle-element 2 1) 1 "Should return 1")
(check-equal? (pascal-triangle-element 3 2) 2 "Should return 2")
(check-equal? (pascal-triangle-element 4 4) 1 "Should return 1")
(check-equal? (pascal-triangle-element 5 3) 6 "Should return 6")
(check-equal? (pascal-triangle 1) (list 1) "Should return (1)")
(check-equal? (pascal-triangle 2) (list 1 1) "Should return (1 1)")
(check-equal? (pascal-triangle 3) (list 1 2 1) "Should return (1 2 1)")
(check-equal? (pascal-triangle 4) (list 1 3 3 1) "Should return (1 3 3 1)")
(check-equal? (pascal-triangle 5) (list 1 4 6 4 1) "Should return (1 4 6 4 1)")