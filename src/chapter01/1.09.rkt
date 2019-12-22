#lang racket

; The first procedure:
; (+ 4 5)
; (inc (+ (desc 4) 5))
; (inc (+ 3 5))
; (inc (inc (+ (desc 3) 5)))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ (desc 2) 5))))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ (desc 1) 5)))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

; The second procedure:
; (+ 4 5)
; (+ (dec 4) (inc 5))
; (+ 3 6)
; (+ (dec 3) (inc 6))
; (+ 2 7)
; (+ (dec 2) (inc 7))
; (+ 1 8)
; (+ (dec 1) (inc 8))
; (+ 0 9)
; 9

; The first process is recursive and the second process is iterative
