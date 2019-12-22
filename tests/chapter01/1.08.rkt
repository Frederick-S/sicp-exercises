#lang racket

(require rackunit "../../src/chapter01/1.08.rkt")

(check-true (good-enough? (cube-root 8) 8) "Should return true")
(check-true (good-enough? (cube-root 27) 27) "Should return true")
(check-true (good-enough? (cube-root 125) 125) "Should return true")