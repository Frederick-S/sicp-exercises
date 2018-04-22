#lang racket

; The interpreter uses applicative-order, it evaluates the arguments first.
; So if "if" is provided as a procedure, the arguments of new-if will be evaluated.
; In the square-root program, the else clause will be evaluated again and again,
; which turns to an infinite loop.