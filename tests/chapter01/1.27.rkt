#lang racket

(require rackunit "../../src/chapter01/1.22.rkt" "../../src/chapter01/1.27.rkt")

(check-false (carmichael-test? 4))
(check-true (carmichael-test? 561))
(check-true (carmichael-test? 1105))
(check-true (carmichael-test? 1729))
(check-true (carmichael-test? 2465))
(check-true (carmichael-test? 2821))
(check-true (carmichael-test? 6601))
(check-false (prime? 561))
(check-false (prime? 1105))
(check-false (prime? 1729))
(check-false (prime? 2465))
(check-false (prime? 2821))
(check-false (prime? 6601))
