#lang racket

(require rackunit "../../src/chapter01/1.7.rkt")

(check-true (good-enough? (sqrt 4) 4) "Should return true")
(check-true (good-enough? (sqrt 9) 9) "Should return true")
(check-true (good-enough? (sqrt 1000) 1000) "Should return true")
(check-true (new-good-enough? (new-sqrt 4) (improve (new-sqrt 4) 4)) "Should return true")
(check-true (new-good-enough? (new-sqrt 9) (improve (new-sqrt 9) 9)) "Should return true")
(check-true (new-good-enough? (new-sqrt 1000) (improve (new-sqrt 1000) 1000)) "Should return true")
