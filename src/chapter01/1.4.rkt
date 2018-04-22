#lang racket

; It first evaluate the subexpression (if (> b 0) + -), 
; if b is greater than 0, it returns the + operator,
; else it returns the - operator.
; Then it evaluate the expression of (+ a b) or (- a b).