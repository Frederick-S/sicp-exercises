#lang racket

(define (pascal-triangle row column)
    (if (or (= column 1) (= column row))
        1
        (+ (pascal-triangle (- row 1) (- column 1)) (pascal-triangle (- row 1) column))))

(provide pascal-triangle)