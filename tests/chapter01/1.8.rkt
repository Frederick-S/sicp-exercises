#lang racket

(require rackunit "../../chapter01/1.8.rkt")

(check-true (good-enough? (cube-root 8) 8) "Should return true")
(check-true (good-enough? (cube-root 27) 27) "Should return true")
(check-true (good-enough? (cube-root 125) 125) "Should return true")