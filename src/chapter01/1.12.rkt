#lang racket

(define (pascal-triangle-element row column)
    (if (or (= column 1) (= column row))
        1
        (+ (pascal-triangle-element (- row 1) (- column 1)) (pascal-triangle-element (- row 1) column))))

(define (pascal-triangle row)
    (map (lambda (column) (pascal-triangle-element row column)) (range 1 (+ row 1) 1)))

(provide pascal-triangle-element pascal-triangle)