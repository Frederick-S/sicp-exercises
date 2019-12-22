#lang racket

; If the interpreter uses applicative-order, it evaluates the arguments first.
; Thus (p) is evaluated first, since the procedure (p) calls itself, it turns to an infinite loop.
; If the interpreter uses normal-order, it will not evaluate the operands until their values are needed.
; In (test 0 (p)), x equals to 0, so the predicate expression evaluates to true,
; then it returns 0 without evaluating (p).