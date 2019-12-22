#lang racket

(require rackunit "../../src/chapter01/1.11.rkt")

(check-equal? (f-recursive 1) 1 "Should return 1")
(check-equal? (f-recursive 3) 4 "Should return 4")
(check-equal? (f-recursive 4) 11 "Should return 11")
(check-equal? (f-recursive 5) 25 "Should return 25")
(check-equal? (f-iterative 1) 1 "Should return 1")
(check-equal? (f-iterative 3) 4 "Should return 4")
(check-equal? (f-iterative 4) 11 "Should return 11")
(check-equal? (f-iterative 5) 25 "Should return 25")
